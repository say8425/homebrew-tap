class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v#{version}/hs-darwin-arm64"
      sha256 "02892ce7048794854394f86c58fa754596deca6f97c934091a8c3c17521a05e9"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v#{version}/hs-darwin-x64"
      sha256 "932b40116d97bfb2415787af68d34aaf1e8b5aed64e81808c86b9e664ab8830e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v#{version}/hs-linux-arm64"
      sha256 "5f379fe548f131b7c32b935633eeeb3125e43cbdca8080a827e970d6ffc02d69"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v#{version}/hs-linux-x64"
      sha256 "86684560f01b0eb0080ddec5fb94f90dc735ec5252060f2f4d37a66c029d0eac"
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
