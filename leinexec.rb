class Leinexec < Formula
  version '0.1.00'
  homepage "https://github.com/mn-dimension/homebrew-brew"
  url 'https://github.com/mn-dimension/homebrew-brew.git'

  bottle :unneeded

  skip_clean 'bin'

  def install
    bin.install Dir["script/lein-exec/lein*"]
  end

end
