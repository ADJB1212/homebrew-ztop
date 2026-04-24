class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.3"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.3/ztop-0.0.3-macos-arm64.tar.gz"
      sha256 "b3b06d8ea98003d0ef3b8833e17ed1c7a477a28f54b47fb8d82577b80410cd20"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.3/ztop-0.0.3-macos-x86_64.tar.gz"
      sha256 "de8e9096903e33d227bebd21a8b835080dfb33748761476071ce48acfa8b4308"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.3/ztop-0.0.3-linux-arm64.tar.gz"
      sha256 "405d4c05b196b1bbc71b43110cef03ac6752069ffd69c572fec7b40c6a4364cd"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.3/ztop-0.0.3-linux-x86_64.tar.gz"
      sha256 "5605fab37a90b7437bf644c6e17d3de399cf3b178566bae8f53e1f3acd6f903a"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
