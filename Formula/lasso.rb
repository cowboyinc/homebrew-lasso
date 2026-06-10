class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.4.0"
  license "BUSL-1.1"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.0/lasso-darwin-arm64"
      sha256 "2d816a20c8438e2086d1041ad13b1e3a95e542357d601da9993b7b70f0ae2ef2"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.0/lasso-darwin-x64"
      sha256 "1fa946c5feaa5e02d98455726139dc733b4c2d5a71885b8550221f6769dadac4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.0/lasso-linux-arm64"
      sha256 "33932e45e08abab5866b3c924c30ab5013818bee186eb28b065ee2544582381d"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.0/lasso-linux-x64"
      sha256 "7fcf82295e25ad9536f6ef295db741fe82c415610e1381a325d0190946e977f2"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
