class Vibecli < Formula
  desc "VibeCody terminal AI assistant — daemon + CLI"
  homepage "https://turingworks.github.io/vibecody"
  version "0.5.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/vibecli-aarch64-apple-darwin.tar.gz"
      sha256 "76c81395970f524bd29092139065a138426ece33cc5ee71bafb35768f51f670f"
    end
    on_intel do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/vibecli-x86_64-apple-darwin.tar.gz"
      sha256 "2862590960b60bca5d03bda5fd76cc39cae188a35fb4017079685a582a6cf316"
    end
  end

  on_linux do
    on_arm do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/vibecli-aarch64-linux.tar.gz"
      sha256 "d57da0094663a928008e2bb39b8b8d56b3e3d7895fcb86d258392ff89b02649b"
    end
    on_intel do
      url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/vibecli-x86_64-linux.tar.gz"
      sha256 "c90fa4cc5a0faca83fea50e48f098d8b0cb294d2c2e3e6eebc9dd59c9e760163"
    end
  end

  def install
    bin.install "vibecli"
  end

  test do
    system "#{bin}/vibecli", "--version"
  end
end
