cask "vibedesk" do
  version "0.5.15"
  sha256 arm:   "6982adfadad80b1e1311af93d98dde396b7222804c05244b446e6d38bf060816",
         intel: "0c08d10566a4a5803491cad2336f0acecebbb3fb1881fa40ec26760e879fcdfa"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeDesk_0.5.15_aarch64.dmg"
  end
  on_intel do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeDesk_0.5.15_x64.dmg"
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
