class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.4"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.4/ztop-0.0.4-macos-arm64.tar.gz"
      sha256 "42452b723602e30d7820c8d3d734f22ecdd4ea7a12f289603a957b9111733d49"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.4/ztop-0.0.4-macos-x86_64.tar.gz"
      sha256 "bcdd20725e3533d41b90eb1c4489deba0c44acb1222ef54bade2fb9edf65d34d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.4/ztop-0.0.4-linux-arm64.tar.gz"
      sha256 "27a3ca94d65cbb8c9e09e3239732fe725f067c8374e57226d1c2ed77fc592800"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.4/ztop-0.0.4-linux-x86_64.tar.gz"
      sha256 "662f27583c37bbc78fcf2e013418dc2c3fdd8b1aa13479b78beb77f488580626"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
