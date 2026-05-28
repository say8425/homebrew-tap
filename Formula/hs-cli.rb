class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.2/hs-darwin-arm64"
      sha256 "c7ff5be21de886478ef42684ff4828ad1872900d9d7761107e167b4c81acc05b"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.2/hs-darwin-x64"
      sha256 "f05b740382ea1a63f02381041403bcad71c8c5cfc0f060caa001d9d17232fdb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.2/hs-linux-arm64"
      sha256 "7d0bf6e31275d4143d94ab52f9e807141cb7995593130771d283d06a44ce9f2f"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.2/hs-linux-x64"
      sha256 "c0c8eccb01599d1b83495c7c320ba467a4a5bc1969d238e44e78efc249327f71"
    end
  end

  def install
    binary = Dir["hs-*"].first
    bin.install binary => "hs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hs --version")
  end
end
