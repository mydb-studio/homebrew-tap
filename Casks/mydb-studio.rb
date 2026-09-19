cask "mydb-studio" do
  version "0.1.4"
  sha256 "68b2c6b0241448fc0653f35e8e59a8d4f58f131cd3f0546a6834fc3af556f6c2"

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
