#!/bin/bash
# sendemail

# send a message to a list of email accounts from a gmail account
#

# set -o errexit
# set -o pipefail
# set -o nounset
# set -o xtrace

user="$1" # gmail account to send from; must have 2fa and app password setup
secret="$2" # location of app password setup for the account
to_list="$3" # comma seperated list
subject="$4"
text="$5"

if [ -f "${secret}" ]; then
  chmod go-rwx "${secret}"
else
  echo "You do not have the password file [${secret}] to send mail"
  exit 1
fi

app_password=$(cat "${secret}")
IFS=','
to_all=""
for to in ${to_list}; do
  to_all="${to_all}--mail-rcpt $to "
  echo ${to_all}
done
IFS=' '

message="Subject: ${subject}\n\n ${text}"
echo "Sending message:\n---------\nTo: $to_list\n${message}\n----------\n "
command="echo \"${message}\" | curl --ssl-reqd --silent --url smtps://smtp.gmail.com:465 --user ${user}:${app_password} --mail-from ${user} ${to_all} --upload-file ."
eval $command
