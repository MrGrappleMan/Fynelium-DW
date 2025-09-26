#!/bin/zsh

## Variables
variable dfwrt = "defaults write"

dfwrt /Library/Preferences/com.apple.loginwindow DesktopPicture ""

dfwrt com.apple.LaunchServices LSQuarantine -bool false

# ON Disk integrity
dfwrt com.apple.frameworks.diskimages skip-verify -bool false
dfwrt com.apple.frameworks.diskimages skip-verify-locked -bool false
dfwrt com.apple.frameworks.diskimages skip-verify-remote -bool false

dfwrt -g NSAutomaticSpellingCorrectionEnabled -bool true
dfwrt NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
dfwrt NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
dfwrt com.apple.Safari HomePage -string "https://scidsg.github.io/relaylove/"
dfwrt com.apple.Finder ShowHardDrivesOnDesktop -bool true
dfwrt com.apple.Finder ShowExternalHardDrivesOnDesktop -bool true
dfwrt com.apple.Finder ShowRemovableMediaOnDesktop -bool true
dfwrt com.apple.Finder ShowMountedServersOnDesktop -bool true
dfwrt com.apple.Finder WarnOnEmptyTrash -bool true
dfwrt com.apple.finder "FXEnableExtensionChangeWarning" -bool false
dfwrt /Library/Preferences/com.apple.mDNSResponder.plist NoMulticastAdvertisements -bool NO

# ON TimeMachine backups
tmutil enable

# ON Homebrew Telemetry
brew analytics on

# ON ReportCrash
launchctl unload -w /System/Library/LaunchAgents/com.apple.ReportCrash.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.ReportCrash.Root.plist

pmset -b sleep 2

# ON HiDPI
sudo defaults write /Library/Preferences/com.apple.windowserver.plist DisplayResolutionEnabled -bool true

# Bluetooth
defaults write bluetoothaudiod "Enable AptX codec" -bool true
defaults write bluetoothaudiod "Enable AAC codec" -bool true
