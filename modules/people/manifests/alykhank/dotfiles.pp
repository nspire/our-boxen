class people::alykhank::dotfiles {
  $home = "/Users/${::boxen_user}"
  $src = $::boxen_srcdir
  $dotfiles = "${src}/dotfiles"

  repository { $dotfiles:
    source     => 'alykhank/dotfiles'
  }

  exec { "Submodule Init":
    command    => 'git submodule init',
    cwd        => $dotfiles,
    require    => Repository[$dotfiles];
  }

  exec { "Submodule Update":
    command    => 'git submodule update --recursive',
    cwd        => $dotfiles,
    require    => Exec['Submodule Init'];
  }

  file { "${home}/.bash_profile":
    ensure     => link,
    target     => "${dotfiles}/.bash_profile",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.inputrc":
    ensure     => link,
    target     => "${dotfiles}/.inputrc",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.vim":
    ensure     => link,
    force      => true,
    target     => "${dotfiles}/.vim",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.vimrc":
    ensure     => link,
    target     => "${dotfiles}/.vimrc",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.gvimrc":
    ensure     => link,
    target     => "${dotfiles}/.gvimrc",
    require    => Repository[$dotfiles];
  }

  # .gitconfig

  # .gitignore_global

  file { "${home}/.git-completion.bash":
    ensure     => link,
    target     => "${dotfiles}/.git-completion.bash",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.svn-completion.bash":
    ensure     => link,
    target     => "${dotfiles}/.svn-completion.bash",
    require    => Repository[$dotfiles];
  }

  file { "${home}/.ackrc":
    ensure     => link,
    target     => "${dotfiles}/.ackrc",
    require    => Repository[$dotfiles];
  }
}
