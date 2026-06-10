class Lasso < Formula
  desc "Interactive terminal console for the Cowboy blockchain"
  homepage "https://github.com/cowboyinc/lasso"
  version "0.3.5"
  license "MIT"

  depends_on "cowboyinc/lasso/cowboy"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.5/lasso-darwin-arm64"
      sha256 "7b736d6c505e05f63c4e723aafe41e708f153689d6c1c5948d7087ea5fe8e0a0"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.5/lasso-darwin-x64"
      sha256 "e03754e3a6b3dce727f8067993ad1994b5741e446969604b443f48309b19ed62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.5/lasso-linux-arm64"
      sha256 "c963f1372fa2f94065c8f244d7e3c5a6c93a73f8af80c830385e53e89fa131da"
    else
      url "https://github.com/cowboyinc/lasso/releases/download/v0.3.5/lasso-linux-x64"
      sha256 "bfb1b9808509a9df86f73770fac6de231bfd46edcf91c9bf4c7951fbec99c48a"
    end
  end

  def install
    bin.install Dir["lasso-*"].first => "lasso"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lasso --version")
  end
end
