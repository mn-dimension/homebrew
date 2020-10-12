class Sendemail < Formula
  version '0.0.01'
  homepage "https://github.com/mn-dimension/homebrew-brew"
  
  bottle :unneeded
  
  skip_clean 'bin'

  def install
    bin.install 'sendemail'
  end

end
