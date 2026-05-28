class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.0/hs-darwin-arm64"
      sha256 "30002a94a19296bd7edc6bd19f743af379a50bb12918c256561836d423800cad"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.0/hs-darwin-x64"
      sha256 "b04f3910e1da017ceddd79cfbe722a111acc30474d3c5f23297f3a7aba63cbe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.0/hs-linux-arm64"
      sha256 "dd836e3756688518c44a2f6f09fa38686baad3fb15ea69369376c78adea02820"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.0/hs-linux-x64"
      sha256 "973a53a2696aeb0b15166f1cdee66cec28bbd2db0dcd6eb8e08183a2f2bf8140"
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
