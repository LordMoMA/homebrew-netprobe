class Netprobe < Formula
  desc "Your software description"
  homepage "https://github.com/LordMoMA/NetProbe"
  url "https://github.com/LordMoMA/NetProbe/archive/v1.0.0.tar.gz"
  sha256 "c64ad277213353d73f5e3cab4c003d5182f1c747366ecda6258106dfa8b60f89"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "netprobe", "main.go"
    bin.install "netprobe"
  end

  test do
    system "#{bin}/netprobe", "--version"
  end
end