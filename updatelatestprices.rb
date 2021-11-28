class Updatelatestprices < Formula
version '0.1.10'
  homepage "https://github.com/mn-dimension/homebrew-brew"
  url 'https://github.com/mn-dimension/homebrew-brew.git'

  skip_clean 'bin'

  def install
    bin.install Dir["script/updatelatestprices/updatelatestprices"]
    prefix.install Dir["script/updatelatestprices/*.plist"]
  end

  plist_options :startup => true

end
