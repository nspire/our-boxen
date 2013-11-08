class people::alykhank {
  include people::alykhank::git

  package { 'Heroku Toolbelt':
    ensure     => installed,
    source     => 'https://s3.amazonaws.com/assets.heroku.com/heroku-toolbelt/heroku-toolbelt.pkg',
    provider   => pkgdmg,
  }
  package { 'Postgres.app':
    ensure     => installed,
    source     => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.3.1.0-alpha1/Postgres93.zip',
    provider   => compressed_app,
  }

  include dropbox
  include macvim
  include spectacle
  include chrome
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

  include people::alykhank::systempreferences
  include people::alykhank::dotfiles
  include people::alykhank::safari
}
