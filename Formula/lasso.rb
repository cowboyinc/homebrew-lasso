class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.4.2"
  license "BUSL-1.1"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.2/lasso-darwin-arm64"
      sha256 "0495db5b52a099414c758ad8cd2319e99030831a7d86675a76f4bd682a7c75b2"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.2/lasso-darwin-x64"
      sha256 "a7d5da11c007bd9b582b0440715263752d32756d48d7d40783c1a79f052afa89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.2/lasso-linux-arm64"
      sha256 "276490c421d3ff201323b59155f983eebc06e901798a85f6fe26c1b3273675b1"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.2/lasso-linux-x64"
      sha256 "dfced05a70b19312eba52ff85ced87c9697b00363d1cd4359151ba7ccabf067a"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
