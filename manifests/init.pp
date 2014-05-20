# == Class: puppet-hammer_devel
#
# Install and configure hammer-cli-katello for development
#
# === Parameters:
#
# $user::             The system user name
#
# $deployment_dir::   The directory in which to deploy hammer-cli-katello and
#                     its dependencies
#

class hammer_devel (

  $user = $hammer_devel::params::user,

  $deployment_dir = $hammer_devel::params::deployment_dir,

  ) inherits hammer_devel::params {

    if $user == undef or $deployment_dir == undef {
      fail('Must define a user and deployment directory')
    } else {
      $config_dir = "/home/${user}"

      class {'hammer_devel::install': } ~>
        class {'hammer_devel::config': }
    }

}