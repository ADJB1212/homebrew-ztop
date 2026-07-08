class Ztop < Formula
  desc "Terminal-based system monitor for macOS"
  homepage "https://github.com/ADJB1212/ztop"
  version "1.0.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v1.0.0/ztop-1.0.0-macos-arm64.tar.gz"
      sha256 "a4499bceac2bea739d9d026879ce9fc7aa8d844ddb2654caf439e7c0263be96a"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
