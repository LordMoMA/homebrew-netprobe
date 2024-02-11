class Netprobe < Formula
  desc "Your software description"
  homepage "https://github.com/LordMoMA/NetProbe"
  url "https://github.com/LordMoMA/NetProbe/archive/v1.0.0.tar.gz"
  sha256 "81f8639ce8ada021a6d32e78bc603da5d1c00da3ad7be3420cea468ff805b23d"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "netprobe", "main.go"
    bin.install "netprobe"
  end

  test do
    system "#{bin}/netprobe", "--version"
  end
end