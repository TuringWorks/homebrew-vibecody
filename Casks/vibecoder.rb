cask "vibecoder" do
  version "0.5.19"
  sha256 arm:   "958b0c53fefa94a18ca2e88930d40821a140200617949da5cdb7e2773aea0263",
         intel: "29c2c69b20b3267e2653cc033d59f6f50b7626cf4cf73dec2302f1bf187304b6"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://vibecody.online/dl/v0.5.19/VibeCoder_0.5.19_aarch64.dmg"
  end
  on_intel do
    url "https://vibecody.online/dl/v0.5.19/VibeCoder_0.5.19_x64.dmg"
  end

  name "VibeCoder"
  desc "VibeCody desktop code editor"
  homepage "https://turingworks.github.io/vibecody"

  auto_updates true
  depends_on macos: :monterey

  app "VibeCoder.app"

  zap trash: [
    "~/Library/Application Support/com.vibecoder.app",
    "~/Library/Caches/com.vibecoder.app",
    "~/Library/Preferences/com.vibecoder.app.plist",
    "~/Library/Saved Application State/com.vibecoder.app.savedState",
  ]
end
