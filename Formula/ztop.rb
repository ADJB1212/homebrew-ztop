class Ztop < Formula
  desc "Terminal-based system monitor for macOS and Linux"
  homepage "https://github.com/ADJB1212/ztop"
  version "0.0.5"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.5/ztop-0.0.5-macos-arm64.tar.gz"
      sha256 "749627001862e0b8f2fd3326427686aec0d9ddba1caedeec5ee0c2199fa0bdbd"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.5/ztop-0.0.5-macos-x86_64.tar.gz"
      sha256 "373aae6fa4d60608c3507acabdfe3f63be13c76acd0602c78fcf763c1d6d9eeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.5/ztop-0.0.5-linux-arm64.tar.gz"
      sha256 "96ca03d97c3c1cef1ab3f28745ec47d3a778d5e21b97c0333eedf4658009cca6"
    end
    on_intel do
      url "https://github.com/ADJB1212/ztop/releases/download/v0.0.5/ztop-0.0.5-linux-x86_64.tar.gz"
      sha256 "9f313bff97107a39b3db4ecaefefce1409c827794f8e829ab94c58202a26bd07"
    end
  end

  def install
    bin.install "ztop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ztop --version 2>&1", 1)
  end
end
