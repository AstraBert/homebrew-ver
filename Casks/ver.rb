# This file was auto-generated. DO NOT EDIT.
cask "ver" do
  name "ver"
  desc "ver: a simple, non-git-like version control system"
  homepage "https://ver-vcs.net"
  version "0.2.2-alpha"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "694441d69102612083f356f64833ea9e7007badf98ec3df9edf4f414639cea8a"
      binary "ver-v#{version}-x86_64-apple-darwin/ver"
    end
    on_arm do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e1367d19e1bc99d0116c609db1679db40d392e87ffc2497a47cb4b83edae1a82"
      binary "ver-v#{version}-aarch64-apple-darwin/ver"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "318bb8ee855610a15d9b8b74ee95c40b39aadc962d53785c21a0bf34b1cc042e"
      binary "ver-v#{version}-x86_64-unknown-linux-gnu/ver"
    end
    on_arm do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ed882d9b8a34d8857c344d47ffc754be34c327695ffaa3bd66e9ca35395edd3"
      binary "ver-v#{version}-aarch64-unknown-linux-gnu/ver"
    end
  end

  postflight do
    if OS.mac?
        system_command "/usr/bin/xattr",
            args: ["-dr", "com.apple.quarantine", "#{staged_path}/ver-v#{version}-#{Hardware::CPU.arm? ? "aarch64" : "x86_64"}-apple-darwin/ver"]
    end
  end

  # No zap stanza required
end
