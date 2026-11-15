# This file was auto-generated. DO NOT EDIT.
cask "ver" do
  name "ver"
  desc "ver: a simple, non-git-like version control system"
  homepage "https://ver-vcs.net"
  version "0.2.1-alpha"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "ver"

  on_macos do
    on_intel do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "eab4732341e0da9592a5cede0713b1947b1e51185dc5af6dd0356c6235e41be5"
    end
    on_arm do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3517579dd03f2508cbff9b116a4ea034cd3aef6ce875c844c90cf3ba35debecd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80b5f583664d55dddbab252b1cd0c97ea2e1c3d27809c27beaf2a7ca1758d0dc"
    end
    on_arm do
      url "https://github.com/AstraBert/ver/releases/download/v#{version}/ver-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed00426c73fcbe73fcf65a7c2a462de2794c4f30ad31aee4c0042ba399400d91"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/ver"]
    end
  end

  # No zap stanza required
end
