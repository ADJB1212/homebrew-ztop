class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-macos-arm64.tar.gz"
      sha256 "a0721dcb61a19cd3ee423397efa6b6f924cbfb43d18c0ec126ac5f05d3eafadd"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-macos-x86_64.tar.gz"
      sha256 "39a8fcb1ae2ce0fb2bbff2e69fc00d093a3d2c7c4b65c502ade73c0e0ec77bc2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-linux-arm64.tar.gz"
      sha256 "f1dc5a25d6740d61592a2f94b68ddcba1affc9c27a4dd2341ba07602cf0f1c82"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-linux-x86_64.tar.gz"
      sha256 "498c31e9a62f3aaec257f3236bf3aebf51acf810fee618d1cfa3a9601d0993d9"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
