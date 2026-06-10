class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.4"
  license "MIT"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.4/lasso-darwin-arm64"
      sha256 "548e8d2cdccb9cd973dfbee3629117d89f4b1ab3c3cb2c5351c5308bd372a4a1"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.4/lasso-darwin-x64"
      sha256 "c9014ed3fd963f03efe1789b97992d17ced0a2b72dc39ac4e1ef5c7ad697f023"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.4/lasso-linux-arm64"
      sha256 "39f09d6b626b9d66bf46d299693c013d854fcf455baa6e767580ad72c4556512"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.4/lasso-linux-x64"
      sha256 "88d316c2e33dd4206b92e059266ee63dae5b2f64c8d0188a999c5bb84a513eac"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
