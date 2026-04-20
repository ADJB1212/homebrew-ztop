class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.2/ztop-0.0.2-macos-arm64.tar.gz"
      sha256 "e8974372a89bc920dbac1aed3745b8c83798c9aa01b8f5fa4278c5fbac0c8167"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.2/ztop-0.0.2-macos-x86_64.tar.gz"
      sha256 "5506b6a63aaad2658d0af1ba8ae70a4a746b17220017a7ee1a47d6e2204604c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.2/ztop-0.0.2-linux-arm64.tar.gz"
      sha256 "e7d0e5c9f97d5c7506e27acd15d61f8acba9a2bcfd80a25f33700914c6458e51"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.2/ztop-0.0.2-linux-x86_64.tar.gz"
      sha256 "a8033d7ac552e33c0de042effec849d03880023ca45ad55b561ec46886701d62"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
