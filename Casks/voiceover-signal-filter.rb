cask "voiceover-signal-filter" do
  version "0.1.0"
  sha256 "444c9cf4a509b2d40a56d36978c944f0a4f7907729c84a10a560c7807941c280"

  url "https://github.com/heath-toby/VoiceOverSignalFilter/releases/download/v#{version}/VoiceOverSignalFilter-#{version}.zip",
      verified: "github.com/heath-toby/VoiceOverSignalFilter/"
  name "VoiceOver Signal Filter"
  desc "Announces Signal Desktop events through VoiceOver"
  homepage "https://github.com/heath-toby/VoiceOverSignalFilter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "VoiceOverSignalFilter-#{version}/VoiceOverSignalFilter.app"

  zap trash: [
    "~/Library/Logs/VoiceOverSignalFilter",
    "~/Library/Preferences/local.heath-toby.voicesignalfilter.plist",
    "~/Library/Saved Application State/local.heath-toby.voicesignalfilter.savedState",
  ]
end
