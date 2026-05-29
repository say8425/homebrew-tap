class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.1/hs-darwin-arm64"
      sha256 "3e1bf202e7c2f4f07393793c2e1acc747785ba196c161c29c8a50459a832d726"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.1/hs-darwin-x64"
      sha256 "b9b8b62ec3ea243c46940fd3cd3c958d4df823297d660e0b945bfa43d2820e1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.1/hs-linux-arm64"
      sha256 "eb39eaea113aab7a4e7f270b74875ccb6f1928f3aeee34fdfc5dc9989c56365d"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.4.1/hs-linux-x64"
      sha256 "6676d9972546aee9b76b73e659524f60ddf1b93379487119f578a6f2d7c56fb6"
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
