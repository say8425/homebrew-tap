class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.6.0/hs-darwin-arm64"
      sha256 "1cde239572519ff0febfc61867b5ac6c8efe3309f452e7895f74bcbf12646aed"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.6.0/hs-darwin-x64"
      sha256 "a9dd33aba9341502d8e522a299bf84262bc60ac6d6fbe3c17bd6efeee28a1f11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.6.0/hs-linux-arm64"
      sha256 "3cf5c096a7798110a358658befb6039582754d9e05a2732837b2d54ce7453e9a"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.6.0/hs-linux-x64"
      sha256 "db5db69e14a4e5bde8fea65993e2e913f80d2a04a4206e541ff5288a48552967"
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
