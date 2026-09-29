cask "vibecoder" do
  version "0.5.14"
  sha256 arm:   "f779ecd8c31beeb52dbe8eef2f206b2e85d7fb714a17e739dba4e16439f3f275",
         intel: "aa56e69fe1270772425df1e1067a87cf64ba17e65a3c2620b18d9c9be244fa80"

  on_arm do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/VibeCoder_0.5.14_aarch64.dmg"
  end
  on_intel do
    url "https://pub-7b2b5d95046f46899a442da12aa33de8.r2.dev/v0.5.14/VibeCoder_0.5.14_x64.dmg"
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
