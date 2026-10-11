cask "bongo" do
  arch arm: "arm64", intel: "intel-x86_64"

  version "1.0.0"
  sha256 arm:   "a6313b653cba35a7bc614d0d686380193fbc0305a7c323256f61207d0ef70604",
         intel: "c22d8e580141939fcf42553eb0ea8c952adc32c7c11c789b9bb6e2e2f4a843d8"

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
