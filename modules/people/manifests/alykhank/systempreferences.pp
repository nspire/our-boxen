class people::alykhank::systempreferences {
  include osx::dock::autohide
  include osx::global::disable_remote_control_ir_receiver
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
}
