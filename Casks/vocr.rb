cask "vocr" do
  version "2.3.1"
  sha256 "4470088928af7d988b0f33b25e55b7693746606722616812e17d46b2b745de45"

  url "https://github.com/chigkim/VOCR/releases/download/v#{version}/VOCR_v#{version}.zip",
      verified: "github.com/chigkim/VOCR/"
  name "VOCR"
  desc "OCR utility for VoiceOver users, with optional LLM image description"
  homepage "https://github.com/chigkim/VOCR"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "VOCR.app"

  zap trash: [
    "~/Library/Application Support/VOCR",
    "~/Library/Caches/com.chikim.VOCR",
    "~/Library/HTTPStorages/com.chikim.VOCR",
    "~/Library/Preferences/com.chikim.VOCR.plist",
    "~/Library/Saved Application State/com.chikim.VOCR.savedState",
  ]
end
