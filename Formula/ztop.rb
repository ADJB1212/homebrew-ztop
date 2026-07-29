class Ztop < Formula
  desc "Terminal-based system monitor for macOS"
  homepage "https://github.com/ADJB1212/ztop"
  version "1.1.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v1.1.0/ztop-1.1.0-macos-arm64.tar.gz"
      sha256 "c236245291ed3f7a4cd092ee0cc263011f23454ed1b0e0e07c4c378f4d1e5180"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
