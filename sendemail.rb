class Sendemail < Formula
  version '0.0.01'

  skip_clean 'bin'

  def install
    bin.install 'sendemail'
  end

end
