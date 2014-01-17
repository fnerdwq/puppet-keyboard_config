# presseding and installation of keyboard-configuration (private)
class keyboard_config::install {

  ensure_resource ('file', '/root/preseed', {'ensure' => 'directory'})

  file { '/root/preseed/keyboard_config.preseed':
    content => template('keyboard_config/preseed.erb'),
    mode    => '0600',
    backup  => false,
    require => File['/root/preseed'],
  }

  package { $keyboard_config::params::package_name:
    ensure       => installed,
    responsefile => '/root/preseed/keyboard_config.preseed',
    require      => File['/root/preseed/keyboard_config.preseed'],
  }

}
