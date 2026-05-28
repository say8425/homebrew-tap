class HsCli < Formula
  desc "Hearthstone CLI for AI agents and humans — decode decks, look up cards, query metadata"
  homepage "https://github.com/say8425/hs-cli"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.3/hs-darwin-arm64"
      sha256 "3186b305300635f74f0617114bf84655e00ac29bebd743a75aa9d4d1a229f2b4"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.3/hs-darwin-x64"
      sha256 "513f463e79a98363b0808ea4efc4bbfccef7a646675e0fac4ebae18e27ffd304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.3/hs-linux-arm64"
      sha256 "08211bbafac1e0559ab1dd14309bfd4f4db5ccb7561582dccc0873fc00b5386d"
    end
    on_intel do
      url "https://github.com/say8425/hs-cli/releases/download/v0.3.3/hs-linux-x64"
      sha256 "7250aa78a3a002a702fe52b16d494ee121e1bad6df65e4bd2ddccbb06531615e"
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
