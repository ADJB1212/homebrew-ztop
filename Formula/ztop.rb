class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-macos-arm64.tar.gz"
      sha256 "7835bdfe33dbf0865c3a4b266d05c568d1eae57120bf2b35193293ed62e8343e"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-macos-x86_64.tar.gz"
      sha256 "652ca3e8d6520734a87b3ab9125c235ea41c88e30ed73553a7e11c950563933c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-linux-arm64.tar.gz"
      sha256 "15157db5b5a2afd24a0fb74c182e370e3f3bc316fb100e61af8df9ab94dae865"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.1/ztop-0.0.1-linux-x86_64.tar.gz"
      sha256 "c83a6d4eabde24bf173267ae87e41da7c99763f5865e1419ae46ee00d1652062"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
