class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.4.1"
  license "BUSL-1.1"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.1/lasso-darwin-arm64"
      sha256 "4622043dbb4ce59b2ab4b54bc754d1b7b41e6cb0ced866b624004e67c308997a"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.1/lasso-darwin-x64"
      sha256 "e781413a025f6a74f73311f56f8d24813eedec8bef06967e6d5289017f35539d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.1/lasso-linux-arm64"
      sha256 "8e1cf1684de1ff783d2be23bcb9ec59cc3f703cafc91f46553fd5f2132e08a53"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.4.1/lasso-linux-x64"
      sha256 "532442309f4170e1781c01cd711ec478a4ac927d81fba82f9271ff6725b32bf9"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
