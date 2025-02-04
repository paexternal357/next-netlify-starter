docs\activity-monitor\icontype.md:
  36: ## Set to `2`
  43: defaults write com.apple.ActivityMonitor "IconType" -int "2" && killall Activity\ Monitor
  46: ## Set to `3`
  53: defaults write com.apple.ActivityMonitor "IconType" -int "3" && killall Activity\ Monitor
  56: ## Set to `5`
  61: defaults write com.apple.ActivityMonitor "IconType" -int "5" && killall Activity\ Monitor
  64: ## Set to `6`
  71: defaults write com.apple.ActivityMonitor "IconType" -int "6" && killall Activity\ Monitor
docs\activity-monitor\updateperiod.md:
  26: ## Set to `1`
  31: defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "1" && killall Activity\ Monitor
  34: ## Set to `2`
  39: defaults write com.apple.ActivityMonitor "UpdatePeriod" -int "2" && killall Activity\ Monitor
docs\desktop\_fxsortfoldersfirstondesktop.md:
  23: ## Set to `true`
  28: defaults write com.apple.finder "_FXSortFoldersFirstOnDesktop" -bool "true" && killall Finder
docs\desktop\createdesktop.md:
  24: ## Set to `false`
  29: defaults write com.apple.finder "CreateDesktop" -bool "false" && killall Finder
docs\desktop\showexternalharddrivesondesktop.md:
  22: ## Set to `false`
  27: defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false" && killall Finder
docs\desktop\showharddrivesondesktop.md:
  22: ## Set to `true`
  27: defaults write com.apple.finder "ShowHardDrivesOnDesktop" -bool "true" && killall Finder
docs\desktop\showmountedserversondesktop.md:
  22: ## Set to `true`
  27: defaults write com.apple.finder "ShowMountedServersOnDesktop" -bool "true" && killall Finder
docs\desktop\showremovablemediaondesktop.md:
  22: ## Set to `false`
  27: defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false" && killall Finder
docs\dock\autohide-delay.md:
  43: ## Set to `0`
  48: defaults write com.apple.dock "autohide-delay" -float "0" && killall Dock
docs\dock\autohide-time-modifier.md:
  43: ## Set to `2`
  48: defaults write com.apple.dock "autohide-time-modifier" -float "2" && killall Dock
  56: ## Set to `0`
  61: defaults write com.apple.dock "autohide-time-modifier" -float "0" && killall Dock
docs\dock\autohide.md:
  34: ## Set to `true`
  39: defaults write com.apple.dock "autohide" -bool "true" && killall Dock
docs\dock\mineffect.md:
  44: ## Set to `scale`
  47: defaults write com.apple.dock "mineffect" -string "scale" && killall Dock
  55: ## Set to `suck`
  60: defaults write com.apple.dock "mineffect" -string "suck" && killall Dock
docs\dock\orientation.md:
  29: ## Set to `left`
  34: defaults write com.apple.dock "orientation" -string "left" && killall Dock
  57: ## Set to `right`
  62: defaults write com.apple.dock "orientation" -string "right" && killall Dock
docs\dock\scroll-to-open.md:
  26: ## Set to `true`
  31: defaults write com.apple.dock "scroll-to-open" -bool "true" && killall Dock
docs\dock\show-recents.md:
  40: ## Set to `false`
  45: defaults write com.apple.dock "show-recents" -bool "false" && killall Dock
docs\dock\static-only.md:
  24: ## Set to `true`
  29: defaults write com.apple.dock "static-only" -bool "true" && killall Dock
docs\dock\.md:
    defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'; killall Dock
docs\dock\tilesize.md:
  25: ## Set to `36`
  30: defaults write com.apple.dock "tilesize" -int "36" && killall Dock
docs\feedback-assistant\autogather.md:
  32: ## Set to `false`
  37: defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false"
docs\finder\_fxsortfoldersfirst.md:
  24: ## Set to `true`
  29: defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true" && killall Finder
docs\finder\appleshowallextensions.md:
  34: ## Set to `true`
  39: defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true" && killall Finder
docs\finder\appleshowallfiles.md:
  39: ## Set to `true`
  44: defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && killall Finder
docs\finder\finderspawntab.md:
  35: ## Set to `false`
  40: defaults write com.apple.finder "FinderSpawnTab" -bool "false" && killall Finder
docs\finder\fxdefaultsearchscope.md:
  24: ## Set to `SCcf`
  29: defaults write com.apple.finder "FXDefaultSearchScope" -string "SCcf" && killall Finder
  32: ## Set to `SCsp`
  37: defaults write com.apple.finder "FXDefaultSearchScope" -string "SCsp" && killall Finder
docs\finder\fxenableextensionchangewarning.md:
  39: ## Set to `false`
  44: defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false" && killall Finder
docs\finder\fxpreferredviewstyle.md:
  24: ## Set to `clmv`
  29: defaults write com.apple.finder "FXPreferredViewStyle" -string "clmv" && killall Finder
  32: ## Set to `Nlsv`
  37: defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder
  40: ## Set to `glyv`
  45: defaults write com.apple.finder "FXPreferredViewStyle" -string "glyv" && killall Finder
docs\finder\fxremoveoldtrashitems.md:
  23: ## Set to `true`
  28: defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true" && killall Finder
docs\finder\nsdocumentsavenewdocumentstocloud.md:
  29: ## Set to `false`
  34: defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
docs\finder\nstableviewdefaultsizemode.md:
  25: ## Set to `1`
  30: defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "1" && killall Finder
  53: ## Set to `3`
  58: defaults write NSGlobalDomain "NSTableViewDefaultSizeMode" -int "3" && killall Finder
docs\finder\nstoolbartitleviewrolloverdelay.md:
  40: ## Set to `0`
  45: defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0" && killall Finder
  53: ## Set to `1`
  58: defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "1" && killall Finder
docs\finder\quitmenuitem.md:
  34: ## Set to `true`
  39: defaults write com.apple.finder "QuitMenuItem" -bool "true" && killall Finder
docs\finder\showpathbar.md:
  24: ## Set to `true`
  29: defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder
docs\finder\showwindowtitlebaricons.md:
  25: ## Set to `true`
  30: defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true" && killall Finder
docs\keyboard\applefnusagetype.md:
  27: ## Set to: Do Nothing (default)
  32: defaults write com.apple.HIToolbox AppleFnUsageType -int "0"
  35: ## Set to: Change input source
  40: defaults write com.apple.HIToolbox AppleFnUsageType -int "1"
  43: ## Set to: Show Emoji & Symbols
  48: defaults write com.apple.HIToolbox AppleFnUsageType -int "2"
  51: ## Set to: Start Dictation
  56: defaults write com.apple.HIToolbox AppleFnUsageType -int "3"
docs\keyboard\applekeyboardfnstate.md:
  34: ## Set to `true`
  39: defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
docs\keyboard\applekeyboarduimode.md:
  24: ## Set to: Disabled (default)
  27: defaults write NSGlobalDomain AppleKeyboardUIMode -int "0"
  36: ## Set to: Enabled
  39: defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"
docs\keyboard\applepressandholdenabled.md:
  42: ## Set to `false`
  47: defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"
docs\keyboard\toggle-language-indicator.md:
  41: ## Set to `false`
  46: defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool "false"
docs\menubar\dateformat.md:
  29: ## Set to `"EEE d MMM HH:mm:ss"`
  34: defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""
  42: ## Set to `"EEE h:mm:ss"`
  47: defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE h:mm:ss\""
  55: ## Set to `"EEE HH:mm:ss"`
  60: defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE HH:mm:ss\""
docs\menubar\flashdateseparators.md:
  38: ## Set to `true`
  43: defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true" && killall SystemUIServer
docs\messages\show-subject-field.md:
  21: ## Set to `true`
  26: defaults write com.apple.MobileSMS "MMSShowSubject" -bool "true" && killall Messages
docs\misc\apple-intelligence.md:
  24: ## Set to `false`
  29: defaults write com.apple.CloudSubscriptionFeatures.optIn "545129924" -bool "false"
docs\misc\devmode.md:
  33: ## Set to `true`
  38: defaults write com.apple.helpviewer "DevMode" -bool "true"
docs\misc\enable-spring-load-actions-on-all-items.md:
  31: ## Set to `true`
  36: defaults write com.apple.dock "enable-spring-load-actions-on-all-items" -bool "true" && killall Dock
docs\misc\lsquarantine.md:
  31: ## Set to `false`
  36: defaults write com.apple.LaunchServices "LSQuarantine" -bool "false"
docs\misc\nsclosealwaysconfirmschanges.md:
  32: ## Set to `false`
  37: defaults write NSGlobalDomain "NSCloseAlwaysConfirmsChanges" -bool "false"
docs\misc\nsquitalwayskeepwindows.md:
  32: ## Set to `false`
  38: defaults write NSGlobalDomain "NSQuitAlwaysKeepsWindow" -bool "false"
docs\misc\userwantsplaybacknotifications.md:
  22: ## Set to `false`
  27: defaults write com.apple.Music "userWantsPlaybackNotifications" -bool "false" && killall Music
docs\mission-control\applespacesswitchonactivate.md:
  31: ## Set to `false`
  36: defaults write NSGlobalDomain "AppleSpacesSwitchOnActivate" -bool "false" && killall Dock
docs\mission-control\expose-group-apps.md:
  24: ## Set to `true`
  29: defaults write com.apple.dock "expose-group-apps" -bool "true" && killall Dock
docs\mission-control\mru-spaces.md:
  34: ## Set to `false`
  39: defaults write com.apple.dock "mru-spaces" -bool "false" && killall Dock
docs\mission-control\spans-displays.md:
  24: ## Set to `true`
  29: defaults write com.apple.spaces "spans-displays" -bool "true" && killall SystemUIServer
docs\mouse\focusfollowsmouse.md:
  37: ## Set to `true`
  42: defaults write com.apple.Terminal "FocusFollowsMouse" -bool "true" && killall Terminal
docs\mouse\linear.md:
  36: defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"
  44: defaults write NSGlobalDomain com.apple.mouse.linear -bool "false"
docs\mouse\scaling.md:
docs\safari\showfullurlinsmartsearchfield.md:
  21: ## Set to `true`
  26: defaults write com.apple.Safari "ShowFullURLInSmartSearchField" -bool "true" && killall Safari
docs\screenshots\disable-shadow.md:
  40: ## Set to `true`
  45: defaults write com.apple.screencapture "disable-shadow" -bool "true"
docs\screenshots\include-date.md:
  34: ## Set to `false`
  40: defaults write com.apple.screencapture "include-date" -bool "false"
docs\screenshots\location.md:
  32: ## Set to `~/Pictures`
  35: defaults write com.apple.screencapture "location" -string "~/Pictures" && killall SystemUIServer
docs\screenshots\show-thumbnail.md:
  34: ## Set to `false`
  39: defaults write com.apple.screencapture "show-thumbnail" -bool "false"
docs\screenshots\type.md:
  43: ## Set to `jpg`
  48: defaults write com.apple.screencapture "type" -string "jpg"
  51: ## Set to `heic`
  56: defaults write com.apple.screencapture "type" -string "heic"
docs\simulator\screenshotsavelocation.md:
  29: ## Set to `~/Pictures/Simulator Screenshots`
  32: defaults write com.apple.iphonesimulator "ScreenShotSaveLocation" -string "~/Pictures/Simulator Screenshots"
docs\textedit\richtext.md:
  37: ## Set to `false`
  42: defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit
docs\textedit\smartquotes.md:
  32: ## Set to `false`
  37: defaults write com.apple.TextEdit "SmartQuotes" -bool "false" && killall TextEdit
docs\timemachine\donotoffernewdisksforbackup.md:
  29: ## Set to `true`
  34: defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
docs\trackpad\dragging.md:
  22: ## Set to `true`
  25: defaults write com.apple.AppleMultitouchTrackpad "Dragging" -bool "true"
docs\trackpad\draglock.md:
  22: ## Set to `true`
  25: defaults write com.apple.AppleMultitouchTrackpad "DragLock" -bool "true"
docs\trackpad\firstclickthreshold.md:
  26: ## Set to `0`
  31: defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "0"
  42: ## Set to `2`
  47: defaults write com.apple.AppleMultitouchTrackpad "FirstClickThreshold" -int "2"
docs\trackpad\trackpadthreefingerdrag.md:
  22: ## Set to `true`
  25: defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"
docs\xcode\ideadditionalcounterpartsuffixes.md:
  26: defaults write com.apple.dt.Xcode "IDEAdditionalCounterpartSuffixes" -array-add "ViewModel" "View" && killall Xcode
  34: defaults write com.apple.dt.Xcode "IDEAdditionalCounterpartSuffixes" -array-add "Router" "Interactor" "Builder" && killall Xcode
docs\xcode\showbuildoperationduration.md:
  21: ## Set to `true`
  26: defaults write com.apple.dt.Xcode "ShowBuildOperationDuration" -bool "true" && killall Xcode
