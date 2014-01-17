# set flavor specific variables (private)
class keyboard_config::params () {
  case $::osfamily {
    'Debian': {
      $package_name   = 'keyboard-configuration'
    }
    default: {
      fail("Module ${module_name} is not supported on ${::operatingsystem}/${::osfamily}")
    }
  }
}

