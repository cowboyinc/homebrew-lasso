class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.1/lasso-darwin-arm64"
      sha256 "9e70a7610af3cdf6f8b02971f5da8e2b62b6efbe98e74af27659fcf2ae5d516b"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.1/lasso-darwin-x64"
      sha256 "9c671d00773105884abc186c417d1a32b4904080c8fcae7d857910f985fc1a40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.1/lasso-linux-arm64"
      sha256 "cbe4383317cb1eb1d25e1977fa567e8498dc899845ae7417bce34397a0a9438a"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.1/lasso-linux-x64"
      sha256 "eec67d5634c7fa6a2bed755f04a1ebdc7e7bcd165fd83fa3b4f47b5d0c38ef5f"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
