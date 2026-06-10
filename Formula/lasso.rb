class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.3"
  license "MIT"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.3/lasso-darwin-arm64"
      sha256 "405447dc5d254eaa62160ebcc01f599fb85ae429f0d8038c088e6b4bd158b4c1"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.3/lasso-darwin-x64"
      sha256 "d435c3edbc5748f9f848dd6c5a9bfc6bd5111bd423f7c64e9603d9b2c4faef2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.3/lasso-linux-arm64"
      sha256 "89ab70b94cd493e5110dc79e10e783fad5bcd165a4fae2c98187cfb0cc547b1e"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.3/lasso-linux-x64"
      sha256 "a2315e7764679f722a943832f8dc170f7c6a53360b1bca539799346565904199"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
