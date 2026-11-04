# Homebrew tap for Pane Switcher for Rex

Install [Pane Switcher for Rex](https://github.com/Kristijan/pane-switcher-for-rex), a native macOS picker for switching between local and remote Rex panes.

This repository contains the Homebrew cask only. Application source, documentation, issues, and signed release downloads live in the [application repository](https://github.com/Kristijan/pane-switcher-for-rex).

## Requirements

- Apple Silicon Mac.
- macOS 15 Sequoia or later.
- [Rex](https://www.superlogical.com/rex) installed and running, with its local server available.
- **Remote Control** enabled in **Rex Settings → Server → Remote Control**.

## Install

```sh
brew tap kristijan/pane-switcher-for-rex
brew install --cask kristijan/pane-switcher-for-rex/pane-switcher-for-rex
```

The fully qualified install command trusts this specific cask on current Homebrew versions without trusting the entire tap. See [Homebrew tap trust](https://docs.brew.sh/Tap-Trust).

Open **Pane Switcher for Rex** from Applications and follow the setup wizard. See the [application README](https://github.com/Kristijan/pane-switcher-for-rex#first-launch) for setup, shortcuts, and settings.

## Upgrade

To upgrade:

```sh
brew update
brew upgrade --cask kristijan/pane-switcher-for-rex/pane-switcher-for-rex
```

Homebrew handles quitting the app during the upgrade and may reopen it afterward. If it remains closed, open **Pane Switcher for Rex** from Applications.

The application has no self-updater. Homebrew installs prebuilt, signed and notarized Apple Silicon releases; it does not compile the application locally.

## Uninstall

To keep application settings and recent-pane history, first disable **Launch at login** in the application's Settings, then run:

```sh
brew uninstall --cask pane-switcher-for-rex
```

To also remove its login registration, settings, and recent-pane history, use this **instead**:

```sh
brew uninstall --cask --zap pane-switcher-for-rex
```

After uninstalling, optionally remove the tap:

```sh
brew untap kristijan/pane-switcher-for-rex
```

## Maintenance and support

The application repository's release workflow proposes cask updates here as ready-for-review pull requests. Review the version, download URL, and ZIP checksum, and publish the corresponding application release before merging its cask update. Release assets remain in the application repository; this tap needs no Apple signing or notarization credentials.

See the [release guide](https://github.com/Kristijan/pane-switcher-for-rex/blob/main/RELEASING.md) for maintainer setup and the release procedure. Report application problems in the [application issue tracker](https://github.com/Kristijan/pane-switcher-for-rex/issues).
