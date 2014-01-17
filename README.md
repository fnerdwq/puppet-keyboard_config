#puppet-keyboard_config

####Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What Keyboard_config affects](#what-keyboard_config-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage](#usage)
5. [Limitations](#limitations)
6. [TODOs](#todos)

##Overview

This modules manages the console keyboard layout on Debian like system.

Written for Puppet >= 3.4.0.

##Module Description

See [Overview](#overview) for now.

##Setup

###What  affects

* only the console keyboard layout

###Setup Requirements

Nothing special, default is us.
	
##Usage

A simple `include keyboard_config` will do.

The Parameters are taken from `debconf` for the `keyboard-configuration`
package. see the Parameter in the `init.pp`. 

##Limitations:

Only tested on 
* Debian 7
so far.

Puppet Version >= 3.4.0.

##TODOs:

* Possibly extent to RedHat like systems.
* remove config trigger on installation of package
