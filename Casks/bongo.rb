cask "bongo" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.0.0"
  sha256 arm:   "e6fe7cd68a6bc580ff321276ac4e7ba0f112f69d86b7886a9b557c25077708c4",
         intel: "196bf4d118c59cc74d96142d7b8fbd7dbadd9e976b8db5bfd6c958eb747cc8ca"

  url "https://github.com/mehedishakeel/Bongo/releases/download/v1.0.0/Bongo-1.0-macos-#{arch}.dmg"
  name "Bongo"
  desc "Native Bangla Phonetic Keyboard for macOS"
  homepage "https://getbongo.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Bongo.app"

  zap trash: [
    "~/Library/Application Support/Bongo",
    "~/Library/Caches/com.mehedishakeel.bongo",
    "~/Library/Preferences/com.mehedishakeel.bongo.plist",
  ]
end
