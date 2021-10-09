cask "ankama" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://download.ankama.com/launcher/full/mac/"
  end

  name "Ankama Launcher"
  desc "Discover the portal you can use to download all of Ankama's PC games"
  homepage "https://www.ankama.com/en/launcher"

  depends_on macos: ">= :sierra"

  app "Ankama Launcher.app"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/Ankama Launcher",
    "~/Library/Preferences/com.ankama.zaap.plist",
    "~/Library/Saved Application State/com.ankama.zaap.savedState",
  ]
end
