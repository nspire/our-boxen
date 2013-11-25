class projects::nspire {
  boxen::project { 'nspire':
    ruby       => '2.0.0-p353',
    source     => 'nspire/nspire'
  }
}
