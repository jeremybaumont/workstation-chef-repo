force_default['git']['osx_dmg']['url'] = "http://downloads.sourceforge.net/project/git-osx-installer/git-2.2.1-intel-universal-mavericks.dmg"
force_default['git']['osx_dmg']['app_name']    = 'git-2.2.1-intel-universal-mavericks'
force_default['git']['osx_dmg']['volumes_dir'] = 'Git 2.2.1 Mavericks Intel Universal'
force_default['git']['osx_dmg']['package_id']  = 'git-2.2.1-intel-universal-mavericks.pkg'
force_default['git']['osx_dmg']['checksum']    = '5350547ecdf07b15d01d0cfe9e10872a'

force_default['iterm2'] = {
  "tmux_enabled" => false,
  "version" => "2_0_0_20141022",
  "checksum" => "d2e16b172548bd0f08b7b1fa42f0b42f5781f4e2a6452e6ad21a24301b38577c",
  "tmux_compile" => false  
}

# These attributes are used by the mac_os_x::settings recipe to
# build dynamic data driven settings. See the mac_os_x cookbook's
# README.md for more information about how this works. Note that the
# "domain" key is required.
# These are my personal preferences. If you don't know what a
# particular setting does, remove it before running Chef.
default['mac_os_x']['settings'] = {
      "dock" => {
        "domain" => "com.apple.dock",
        "autohide" => true,
        "dashboard-in-overlay" => true,
        "launchanim" => false,
        "magnification" => true,
        "mineffect" => "scale",
        "minimize-to-application" => true,
        "mru-spaces" => false,
        "showAppExposeGestureEnabled" => true,
        "showDesktopGestureEnabled" => false,
        "showLaunchpadGestureEnabled" => false,
        "tilesize" => 20,
        "wvous-bl-modifier" => 0,
        "wvous-bl-corner" => 5
      },
      "trackpad" => {
        "domain" => "com.apple.driver.AppleBluetoothMultitouch.trackpad",
        "Clicking" => true,
        "TrackpadThreeFingerDrag" => true,
        "TrackpadThreeFingerHorizSwipeGesture" => false,
        "TrackpadThreeFingerVertSwipeGesture" => false,
        "TrackpadFiveFingerPinchGesture" => false,
        "TrackpadFourFingerPinchGesture" => false
      },
      "finder" => {
        "domain" => "com.apple.finder",
        "EmptyTrashSecurely" => true,
        "FXArrangeGroupViewBy" => "Name",
        "FXPreferredViewStyle" => "Nlsv", # list view
        "NewWindowTarget" => "PfHm", # home directory
        "ShowExternalHardDrivesOnDesktop" => true,
	"AppleShowAllFiles" => true,
      },
      "global" => {
        "domain" => "NSGlobalDomain",
        "AppleEnableMenuBarTransparency" => false,
        "AppleShowScrollBars" => "Always",
        "InitialKeyRepeat" => 15,
        "KeyRepeat" => 2,
        "NSAutomaticSpellingCorrectionEnabled" => false,
        "NSUserReplacementItemsEnabled" => false,
        "WebAutomaticSpellingCorrectionEnabled" => false,
        "WebAutomaticTextReplacementEnabled" => 0,
        "com.apple.springing.delay" => "0.5",
        "com.apple.springing.enabled" => 1,
        "com.apple.trackpad.scaling" => 3
      },
      "safari" => {
        "domain" => "com.apple.Safari",
        "AutoFillFromAddressBook" => false,
        "AutoFillMiscellaneousForms" => false,
        "AutoFillPasswords" => false,
        "AutoOpenSafeDownloads" => false,
        "HistoryAgeInDaysLimit" => 365000,
        "IncludeDevelopMenu" => true,
        "NewTabBehavior" => 1,
        "NewWindowBehavior" => 1,
        "SafariGeolocationPermissionPolicy" => false,
        "SendDoNotTrackHTTPHeader" => true,
        "WebKitDefaultFixedFontSize" => 12
      },
      "screensaver" => {
        "domain" => "com.apple.screensaver",
        "askForPassword" => 1,
        "askForPasswordDelay" => 5
      },
      "networkbrowser" => {
        "domain" => "com.apple.NetworkBrowser",
        "DisableAirDrop" => true
      }
    }
  
