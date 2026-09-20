cask "mydb-studio" do
  version "0.1.7"
  sha256 "629390c82169fe124f01f0f7910f5433e697c112d80415effb41f63ceecc3dbe"

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
    "~/Library/Application Support/MySQL Studio",
    "~/Library/Application Support/com.mydbstudio.desktop",
    "~/Library/Caches/com.mydbstudio.desktop",
    "~/Library/Preferences/com.mydbstudio.desktop.plist",
    "~/Library/Saved Application State/com.mydbstudio.desktop.savedState",
  ]
end
