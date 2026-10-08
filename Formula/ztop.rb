class Ztop < Formula
  desc "Terminal-based system monitor for macOS"
  homepage "https://github.com/ADJB1212/ztop"
  version "1.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v1.4.0/ztop-1.4.0-macos-arm64.tar.gz"
      sha256 "c76e9b9098af09c756077fa086b73cf49ef90099eacfd96381d65d94f077617a"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
