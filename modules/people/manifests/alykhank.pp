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
