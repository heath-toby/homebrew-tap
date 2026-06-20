cask "ttaccessible" do
  version "1.6.0,31"
  sha256 "d1b83dd7a234438407f3e413a23f5949f55d96e3bb2c6e4353d0a08ec2a440ea"

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
