class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.5.0/hs-darwin-arm64"
      sha256 "0bbdd912bae1016c485df0f981d13c6f41e7c9fdcc871eb542c6556da0424a84"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.5.0/hs-darwin-x64"
      sha256 "81741df0597edd940315d5dbe26d35cd1e28f4c01762bd191212065610551c75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.5.0/hs-linux-arm64"
      sha256 "ab5a4dd13a7718a940861d7c6c07b054d9e9f245351be73ad4207e517c792588"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.5.0/hs-linux-x64"
      sha256 "ce531c9ed747e34e3ab0871c2c0227ef9bafd4b44f0936ae2778104f97267793"
    end
  end

  def install
    binary = Dir["hs-*"].first
    bin.install binary => "hs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hs --version")
  end

  def caveats
    <<~EOS
      To install the Claude Code skill that drives this CLI:
        hs skill install
      Cross-agent (Cursor/Codex/Copilot/OpenCode), via skills.sh:
        npx skills add say8425/hs-cli
    EOS
  end
end
