class Sidekick < Formula
  desc "High Performance HTTP Sidecar Load Balancer"
  homepage "https://min.io"

  version = "0.5.0"
  revision 1
  bottle :unneeded
  depends_on :arch => :x86_64

  url "https://github.com/minio/sidekick/releases/download/v#{version}/sidekick_#{version}_Darwin_x86_64.tar.gz"
  sha256 "acf22136607e6d7eed72525b1c6cf0e569a2496c46c8a0e685e8f2e76a66ccf1"

  def install
    bin.install Dir.glob("sidekick.*").first => "sidekick"
  end
end
