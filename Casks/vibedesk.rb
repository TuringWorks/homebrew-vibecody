cask "vibedesk" do
  version "0.5.14"
  sha256 arm:   "c2f360d06c331895c341c2785e2f38750608f39c7b3e8cbc8697f9f0aeee2b26",
         intel: "5c5282c71689d64dc651d1c9e8da4e36393a0726cc45aad1218e72b0aa3c8d62"

  url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/#{(arch == :arm) ? "VibeDesk_0.5.14_aarch64.dmg" : "VibeDesk_0.5.14_x64.dmg"}"
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
