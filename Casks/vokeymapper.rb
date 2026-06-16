cask "vokeymapper" do
  version "0.1.0"
  sha256 "25bc1ae7496713fcd86b10629af88ca2870f00c8f50705bd9bf625899db8bf81"

  url "https://github.com/heath-toby/VOKeyMapper/releases/download/v#{version}/VOKeyMapper-#{version}.zip",
      verified: "github.com/heath-toby/VOKeyMapper/"
  name "VOKeyMapper"
  desc "Editor for VoiceOver QuickNav, Option Key, and Numpad key bindings"
  homepage "https://github.com/heath-toby/VOKeyMapper"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VOKeyMapper-#{version}/VOKeyMapper.app"

  zap trash: [
    "~/Library/Caches/local.tobyk.vokeymapper",
    "~/Library/HTTPStorages/local.tobyk.vokeymapper",
    "~/Library/Preferences/local.tobyk.vokeymapper.plist",
    "~/Library/Saved Application State/local.tobyk.vokeymapper.savedState",
  ]
end
