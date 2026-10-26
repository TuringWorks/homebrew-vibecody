class Vibecli < Formula
  desc "VibeCody terminal AI assistant — daemon + CLI"
  homepage "https://turingworks.github.io/vibecody"
  license "MIT"

  on_macos do
    on_arm do
      url "https://vibecody.online/dl/v0.5.19/vibecli-aarch64-apple-darwin.tar.gz"
      sha256 "b92da633c4495e0677262d8b4e860f29c68178aac5774bb2e0af6e2c1aef98d0"
    end
    on_intel do
      url "https://vibecody.online/dl/v0.5.19/vibecli-x86_64-apple-darwin.tar.gz"
      sha256 "aaa87c60de2c55add8109387d50521b06cc25ce37bce53e1f1cf5e350aa64846"
    end
  end

  on_linux do
    on_arm do
      url "https://vibecody.online/dl/v0.5.19/vibecli-aarch64-linux.tar.gz"
      sha256 "273a7838503cc62a81d0ef307b47778bef426b9ac1c285d688ae32cdd4eb8e7f"
    end
    on_intel do
      url "https://vibecody.online/dl/v0.5.19/vibecli-x86_64-linux.tar.gz"
      sha256 "8356c27e32a6a665dd28e017f377856880551da6440f8b680a8fb08a464e3cd6"
    end
  end

  def install
    bin.install "vibecli"
  end

  test do
    system "#{bin}/vibecli", "--version"
  end
end
