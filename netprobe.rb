class Netprobe < Formula
  desc "Your software description"
  homepage "https://github.com/LordMoMA/NetProbe"
  url "https://github.com/LordMoMA/NetProbe/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "684d74b8fa0dd39b0ae7cb816daf8a17ec2258711f34f7f8c8969c9e55ecec30"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "netprobe", "main.go"
    bin.install "netprobe"
  end

  test do
    system "#{bin}/netprobe", "--version"
  end
end