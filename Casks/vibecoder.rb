cask "vibecoder" do
  version "0.5.15"
  sha256 arm:   "6285a1228f4f27c8b0e6ec36d760af01b2033db3109efc1ec6694f48fbe542cc",
         intel: "ffc39f8bc8f1bb96b9a3451b13f7870e3c6b6ea76b110f75c8101ead310a2a1b"

  # Bare `arch` returns nil (it only takes arm:/intel: keywords), so a
  # ternary on it always picked the Intel DMG and failed arm64 checksums.
  on_arm do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeCoder_0.5.15_aarch64.dmg"
  end
  on_intel do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.15/VibeCoder_0.5.15_x64.dmg"
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
