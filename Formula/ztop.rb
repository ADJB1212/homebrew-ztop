class Ztop < Formula
  desc "Terminal-based system monitor for macOS"
  homepage "https://github.com/ADJB1212/ztop"
  version "1.2.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v1.2.0/ztop-1.2.0-macos-arm64.tar.gz"
      sha256 "0a20a31f9b29dc1c032d9eaf842f79730e0cea43d7a6c6c06a27a5e7fb6d8fe1"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
