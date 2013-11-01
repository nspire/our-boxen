class people::alykhank::safari {
  boxen::osx_defaults { 'Show Status Bar':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'ShowStatusBar',
    value      => true,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Remove download list items When Safari Quits':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'DownloadsClearingPolicy',
    value      => 1,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Open "safe" files after downloading':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'AutoOpenSafeDownloads',
    value      => false,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Show Develop menu in menu bar':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'IncludeDevelopMenu',
    value      => true,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'AutoFill web forms not Using info from my Contacts card':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'AutoFillFromAddressBook',
    value      => false,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'AutoFill web forms not Credit cards':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'AutoFillCreditCardData',
    value      => false,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'AutoFill web forms not Other forms':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'AutoFillMiscellaneousForms',
    value      => false,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Website tracking Ask websites not to track me':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'SendDoNotTrackHTTPHeader',
    value      => true,
    user       => $::boxen_user;
  }
  boxen::osx_defaults { 'Limit website access to location services Prompt for each website once each day':
    ensure     => present,
    domain     => 'com.apple.Safari',
    key        => 'SafariGeolocationPermissionPolicy',
    value      => 1,
    user       => $::boxen_user;
  }
}
