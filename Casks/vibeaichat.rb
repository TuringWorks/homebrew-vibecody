cask "vibeaichat" do
  version "0.5.15"
  sha256 arm:   "42cac33eeb346e2d4bf8aa134a2c5fae090e4aef0f9aa159023408de6f46ccf0",
         intel: "ac3c875ff2b8f2478c48c2c49b07356ec2ed831eaa2c994041fc49bbf0ad1e63"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeAIChat_0.5.15_aarch64.dmg"
  end
  on_intel do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeAIChat_0.5.15_x64.dmg"
  end

  name "VibeAIChat"
  desc "VibeCody desktop AI assistant"
  homepage "https://turingworks.github.io/vibecody"

  auto_updates true
  depends_on macos: :monterey

  app "VibeAIChat.app"

  zap trash: [
    "~/Library/Application Support/com.vibecody.vibeaichat",
    "~/Library/Caches/com.vibecody.vibeaichat",
    "~/Library/Preferences/com.vibecody.vibeaichat.plist",
    "~/Library/Saved Application State/com.vibecody.vibeaichat.savedState",
  ]
end
