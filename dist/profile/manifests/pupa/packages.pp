# Obligatory class with random packages I always want
class profile::pupa::packages {
  $p_opts = { 'ensure' => 'latest', }

  package { 'fish':
    *       => $p_opts,
    require => Apt::Source['fish'],
  }

  package { 'weechat':
    *       => $p_opts,
    require => Apt::Source['weechat'],
  }

  package { 'mosh':
    *       => $p_opts,
    require => Apt::Source['mosh'],
  }

  package { 'tmux':
    *       => $p_opts,
    require => Apt::Source['pirho'],
  }
}
