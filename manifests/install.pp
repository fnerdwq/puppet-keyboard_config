# presseding and installation of keyboard-configuration (private)
class keyboard_config::install {

  ensure_resource ('file', '/var/local/debconf', {'ensure' => 'directory'})

  file { '/var/local/debconf/keyboard_config.preseed':
    content => template('keyboard_config/preseed.erb'),
    mode    => '0600',
    backup  => false,
    require => File['/var/local/debconf'],
  }

  package { $keyboard_config::params::package_name:
    ensure       => installed,
    responsefile => '/var/local/debconf/keyboard_config.preseed',
    require      => File['/var/local/debconf/keyboard_config.preseed'],
  }

}
