class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.2/lasso-darwin-arm64"
      sha256 "a543eed7b581cf969ebf1225caa3983af437a0e2230eb896b7c4bc340d896522"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.2/lasso-darwin-x64"
      sha256 "b88fbb9c9d47c3561c989eda1ecd1c7feed3a784c591cfc62f2ee55878769b8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.2/lasso-linux-arm64"
      sha256 "883b2dc909ffffebd85436d4203f86800a627bd34779a3d2a80cc74713730d26"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.2/lasso-linux-x64"
      sha256 "1cf02d525863a583c3ae12bfc9c7b899e62f9d5e6c5aa3b99f9c1f44207b88bc"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
