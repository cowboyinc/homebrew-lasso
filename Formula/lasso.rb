class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.0/lasso-darwin-arm64"
      sha256 "b26f58c377b7dc695c7dac2be8782d39cc3548eb70b1e548c3d197ea60752fb1"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.0/lasso-darwin-x64"
      sha256 "3ed93d6ae5bc0d68f6ac04b79d355969f0125f6ac7a2e79dd00a58eecde49412"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.0/lasso-linux-arm64"
      sha256 "096b729e76aaee04a320b6f285975a53109e83af56ec3b94e60e0257d6d5abf3"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.0/lasso-linux-x64"
      sha256 "4ac0ba2314edae47520bcbb97cf05a4d2803febc3afffa913bdcb9335fc8abde"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_predicate bin/"lasso", :executable?
  end
end
