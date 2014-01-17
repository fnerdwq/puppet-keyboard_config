# == Class: keyboard_config
#
# Configures the console keyboard layout.
#
# === Parameters
#
# The corresponding debconf variables:
#
# [*layoutcode*]
#   default: 'us'
#
# [*layout*]
#   default: 'English (US)'
#
# [*model*]
#   default: 'Generic 105-key (Intl) PC'
#
# [*modelcode*]
#   default: 'pc105'
#
# [*variant*]
#   default: 'English (US)'
#
# [*xkbkeymap*]
#   default: 'us'
#
# === Examples
#
#  class { 'keyboard_config':
#    layoutcode => 'ch',
#    layout     => '',
#    model      => 'Generische PC-Tastatur mit 105 Tasten (Intl)',
#    modelcode  => 'pc105',
#    variant    => 'Deutsch (Schweiz)'
#    xkbkeymap  => 'ch',
#  }
#
# === Authors
#
# Frederik Wagner <wagner@wagit.de>
#
# === Copyright
#
# Copyright 2014 Frederik Wagner
#
class keyboard_config (
  $layoutcode = 'us',
  $layout     = 'English (US)',
  $model      = 'Generic 105-key (Intl) PC',
  $modelcode  = 'pc105',
  $variant    = 'English (US)',
  $xkbkeymap  = 'us',
) inherits keyboard_config::params {

  validate_string($layoutcode)
  validate_string($layout)
  validate_string($model)
  validate_string($modelcode)
  validate_string($variant)
  validate_string($xkbkeymap)

  # declare all parameterized classes and relationships
  # (Anchor not needed from Puppet 3.4 upwards)
  class { 'keyboard_config::install': }
  ~>
  class { 'keyboard_config::config': }

  # TODO: do not trigger config if newly installed

}
