class people::alykhank::git {
  git::config::global { 'user.name':
    value      => $github_name
  }
  git::config::global { 'user.email':
    value      => $github_email
  }
  git::config::global { 'color.ui':
    value      => 'auto'
  }
  git::config::global { 'alias.st':
    value      => 'status'
  }
  git::config::global { 'alias.ci':
    value      => 'commit'
  }
  git::config::global { 'alias.co':
    value      => 'checkout'
  }
  git::config::global { 'push.default':
    value      => 'simple'
  }
}
