class Vibecli < Formula
  desc "VibeCody terminal AI assistant — daemon + CLI"
  homepage "https://turingworks.github.io/vibecody"
  license "MIT"

  on_macos do
    on_arm do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/vibecli-aarch64-apple-darwin.tar.gz"
      sha256 "056c1454adbe0e29c091c8467279a6646571decb3297066241a82362b8a95c86"
    end
    on_intel do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/vibecli-x86_64-apple-darwin.tar.gz"
      sha256 "6cc3fa9458fef48923144b35688df9e603d473d5705ee572e3556bc24a10db97"
    end
  end

  on_linux do
    on_arm do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/vibecli-aarch64-linux.tar.gz"
      sha256 "d248ae1b30a49e9174fc276b81c93bbca53050c6e3e63123765fa866493394d0"
    end
    on_intel do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/vibecli-x86_64-linux.tar.gz"
      sha256 "2e6c1e696e8c8273cd440ee78fafe7bc44336235eb3c32690000271693cb3100"
    end
  end

  def install
    bin.install "vibecli"
  end

  test do
    system "#{bin}/vibecli", "--version"
  end
end
