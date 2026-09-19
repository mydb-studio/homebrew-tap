cask "mydb-studio" do
  version "0.1.5"
  sha256 "5051d68c795e71cb1c392500323b3496198b67b4f1cbdbc8e9e9ed1898216b57"

  url "https://github.com/mydb-studio/releases/releases/download/v#{version}/myDB_Studio_#{version}_universal.dmg"
  name "myDB Studio"
  desc "High-performance, crash-resilient database management desktop application"
  homepage "https://mydbstudio.com"

  livecheck do
    url "https://github.com/mydb-studio/releases/releases/releases"
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
