class people::alykhank {
  include dropbox
  include macvim
  include spectacle

  include osx::dock::autohide

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
}
