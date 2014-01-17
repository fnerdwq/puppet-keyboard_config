# configuration/reconfiguration of keyboard-configuration package (private)
class keyboard_config::config () {

  exec { 'update-keyboard-configuration':
    command     => "debconf-set-selections < /root/preseed/keyboard_config.preseed && \
dpkg-reconfigure --frontend=noninteractive ${keyboard_config::params::package_name}",
    refreshonly => true,
    path        => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
  }

}
