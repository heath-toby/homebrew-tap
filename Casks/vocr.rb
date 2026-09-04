cask "vocr" do
  version "3.0.0"
  sha256 "67bd23d114d2e70de337a531959868f70740ad876566a5af8ef7031778c50ec2"

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
  depends_on macos: :ventura

  app "VOCR.app"

  zap trash: [
    "~/Library/Application Support/VOCR",
    "~/Library/Caches/com.chikim.VOCR",
    "~/Library/HTTPStorages/com.chikim.VOCR",
    "~/Library/Preferences/com.chikim.VOCR.plist",
    "~/Library/Saved Application State/com.chikim.VOCR.savedState",
  ]
end
