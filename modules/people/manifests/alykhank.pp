class people::alykhank {
  git::config::global { 'user.email':
    value      => 'github@alykhan.com'
  }

  include dropbox
  include macvim
  include spectacle
  package { 'GoogleVoiceAndVideoSetup':
    ensure     => installed,
    source     => 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg',
    provider   => pkgdmg,
  }
  package { 'Skype':
    ensure     => installed,
    source     => 'http://download.skype.com/macosx/Skype_6.9.59.701.dmg',
    provider   => appdmg,
  }

  include osx::global::disable_remote_control_ir_receiver
  include osx::dock::autohide
  include osx::global::enable_keyboard_control_access

  boxen::osx_defaults { 'Ask to keep changes when closing documents':
    ensure     => present,
    domain     => 'NSGlobalDomain',
    key        => 'NSCloseAlwaysConfirmsChanges',
    value      => true,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Close windows when quitting an application':
    ensure     => present,
    domain     => 'NSGlobalDomain',
    key        => 'NSQuitAlwaysKeepsWindows',
    value      => true,
    user       => $::boxen_user;
  }
  # Desktop & Screen Saver Show with clock
  # Security & Privacy Turn On Firewall
  # Notifications Sort Notification Center By time
  # Trackpad Tap to click
  # Trackpad Three finger drag
  # Trackpad App Expose

  include people::alykhank::safari
}
