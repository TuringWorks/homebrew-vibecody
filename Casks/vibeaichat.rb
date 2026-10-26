cask "vibeaichat" do
  version "0.5.19"
  sha256 arm:   "81b39463eca6c9f957d0468979da94c758dead26b63167963dc15cdad9ee6fd5",
         intel: "5e481bc68030b2a485a011873892395b719dab84f24da9c6b4a4a7937fd3d326"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://vibecody.online/dl/v0.5.19/VibeAIChat_0.5.19_aarch64.dmg"
  end
  on_intel do
    url "https://vibecody.online/dl/v0.5.19/VibeAIChat_0.5.19_x64.dmg"
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
