class Netprobe < Formula
    desc "A CLI tool for network interface statistics"
    homepage "https://github.com/LordMoMA/NetProbe"
    url "https://github.com/LordMoMA/NetProbe/archive/v1.0.0.tar.gz"
    sha256 "81f8639ce8ada021a6d32e78bc603da5d1c00da3ad7be3420cea468ff805b23d"
  
    def install
      bin.install "netprobe"
    end
  end
