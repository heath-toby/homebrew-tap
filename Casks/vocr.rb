cask "vocr" do
  version "3.1.0"
  sha256 "28677e91139b38ed53bc69e40753a70fee41291477457f6d5c6707bfc2bb07b2"

  url "https://github.com/chigkim/VOCR/releases/download/v#{version}/VOCR_v#{version}.zip"
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
