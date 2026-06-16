cask "ttaccessible" do
  version "1.3.5,27"
  sha256 "eb76fced0ac68c3953773941d1bbbd88e619510704c3052dd0e31681e1afcc1e"

  url "https://github.com/math65/ttaccessible/releases/download/v#{version.csv.first}/ttaccessible-#{version.csv.first}-#{version.csv.second}.zip",
      verified: "github.com/math65/ttaccessible/"
  name "TTAccessible"
  desc "Native, fully accessible TeamTalk 5 client for macOS"
  homepage "https://github.com/math65/ttaccessible"

  livecheck do
    url :url
    regex(/ttaccessible[._-]v?(\d+(?:\.\d+)+)-(\d+)\.zip/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "ttaccessible.app"

  zap trash: [
    "~/Library/Application Support/ttaccessible",
    "~/Library/Caches/com.math65.ttaccessible",
    "~/Library/HTTPStorages/com.math65.ttaccessible",
    "~/Library/Preferences/com.math65.ttaccessible.plist",
    "~/Library/Saved Application State/com.math65.ttaccessible.savedState",
  ]
end
