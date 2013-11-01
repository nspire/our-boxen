class people::alykhank {
  include dropbox
  include macvim
  include spectacle
  package { 'GoogleVoiceAndVideoSetup':
    ensure     => installed,
    source     => 'https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg',
    provider   => pkgdmg,
  }

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
