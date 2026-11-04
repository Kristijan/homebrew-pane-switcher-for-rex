cask "pane-switcher-for-rex" do
  version "1.1.1"
  sha256 "3f276985f876a7ada7febbf128e339c42518eb1264a8258afe28c2ba8686568e"

  url "https://github.com/Kristijan/pane-switcher-for-rex/releases/download/v#{version}/Pane-Switcher-for-Rex-#{version}-arm64.zip"
  name "Pane Switcher for Rex"
  desc "Native pane picker for Rex"
  homepage "https://github.com/Kristijan/pane-switcher-for-rex"

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Pane Switcher for Rex.app"

  uninstall quit: "com.kristijan.paneswitch"

  zap launchctl: "com.kristijan.paneswitch",
      trash: [
        "~/Library/Application Support/Pane Switcher for Rex",
        "~/Library/Preferences/com.kristijan.paneswitch.plist",
        "~/Library/Saved Application State/com.kristijan.paneswitch.savedState",
      ]
end
