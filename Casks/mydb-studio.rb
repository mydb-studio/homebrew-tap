cask "mydb-studio" do
  version "0.1.2"
  sha256 "52d59a3617860e29668f6e62fa3b2e593a479bbd377b3fb16975c26551223440"

  url "https://github.com/mydb-studio/releases/releases/download/v#{version}/myDB_Studio_#{version}_universal.dmg"
  name "myDB Studio"
  desc "High-performance, crash-resilient database management desktop application"
  homepage "https://mydbstudio.com"

  livecheck do
    url "https://github.com/mydb-studio/releases/releases"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "myDB_Studio.app", target: "myDB Studio.app"

  zap trash: [
    "~/Library/Application Support/com.mydb.studio",
    "~/Library/Caches/com.mydb.studio",
    "~/Library/Preferences/com.mydb.studio.plist",
    "~/Library/Saved Application State/com.mydb.studio.savedState",
  ]
end
