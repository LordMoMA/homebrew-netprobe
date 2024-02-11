class Netprobe < Formula
  desc "Your software description"
  homepage "https://github.com/LordMoMA/NetProbe"
  url "https://github.com/LordMoMA/NetProbe/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "0af2e668f3be38ddaaa176f4edf4eec86b50ba4cc20dc711e27e1d41e3ced0f5"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "netprobe", "main.go"
    bin.install "netprobe"
  end

  test do
    system "#{bin}/netprobe", "--version"
  end
end