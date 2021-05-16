class Movedatafromc8todimension < Formula
version '0.0.9'
  homepage "https://github.com/mn-dimension/homebrew-brew"
  url 'https://github.com/mn-dimension/homebrew-brew.git'

  bottle :unneeded
  skip_clean 'bin'

  def install
    bin.install Dir["script/movedatafromc8todimension/movedatafromc8todimension"]
    prefix.install Dir["script/movedatafromc8todimension/*.plist"]
  end

  plist_options :startup => true

end
