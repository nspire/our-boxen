class projects::nspire {
  boxen::project { 'nspire':
    ruby       => '2.0.0',
    source     => 'nspire/nspire'
  }
}
