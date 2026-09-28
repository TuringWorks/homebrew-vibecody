cask "vibeaichat" do
  version "0.5.14"
  sha256 arm:   "5392cbfecbe3ed8b7fda26bc81256df80abccf259f79653cf2a1e7c19833ad7c",
         intel: "cd8b5efe95ed5cdc3d93dfb30ff79751f91fdf0aa2554812e4aa2bb266092512"

  url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/#{(arch == :arm) ? "VibeAIChat_0.5.14_aarch64.dmg" : "VibeAIChat_0.5.14_x64.dmg"}"
  name "VibeAIChat"
  desc "VibeCody desktop AI assistant"
  homepage "https://turingworks.github.io/vibecody"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "VibeAIChat.app"

  zap trash: [
    "~/Library/Application Support/com.vibecody.vibeaichat",
    "~/Library/Caches/com.vibecody.vibeaichat",
    "~/Library/Preferences/com.vibecody.vibeaichat.plist",
    "~/Library/Saved Application State/com.vibecody.vibeaichat.savedState",
  ]
end
