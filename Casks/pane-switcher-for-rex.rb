cask "pane-switcher-for-rex" do
  version "1.1.0"
  sha256 "43d0acb59d0011976257cfadf4cf9fb22229290833cc02809540bcae300484ff"

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
