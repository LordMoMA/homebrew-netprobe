class Netprobe < Formula
    desc "A CLI tool for network interface statistics"
    homepage "https://github.com/LordMoMA/NetProbe"
    url "https://github.com/LordMoMA/NetProbe/archive/v1.0.0.tar.gz"
    sha256 "80649dacc9eaf61626b5e0abc6a08d0c86658426bab9853dccdd0cd88c17f471"
  
    def install
      bin.install "netprobe"
    end
  end
