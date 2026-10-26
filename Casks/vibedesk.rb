cask "vibedesk" do
  version "0.5.19"
  sha256 arm:   "2e622206c4a77a130abad49158735f42c3bc31364d110f09ae51c47fc7235dec",
         intel: "b54f6c50550613444213e3e23a0feadbb0ea792d8b28037f7e1c29b98a7eee0f"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://vibecody.online/dl/v0.5.19/VibeDesk_0.5.19_aarch64.dmg"
  end
  on_intel do
    url "https://vibecody.online/dl/v0.5.19/VibeDesk_0.5.19_x64.dmg"
  end

  name "VibeDesk"
  desc "VibeCody desktop task shell"
  homepage "https://turingworks.github.io/vibecody"

  auto_updates true
  depends_on macos: :monterey

  app "VibeDesk.app"

  zap trash: [
    "~/Library/Application Support/com.vibedesk.app",
    "~/Library/Caches/com.vibedesk.app",
    "~/Library/Preferences/com.vibedesk.app.plist",
    "~/Library/Saved Application State/com.vibedesk.app.savedState",
  ]
end
