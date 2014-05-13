# Configuration for hammer development

class hammer_devel::config {

  file { ["${hammer_devel::config_dir}/.hammer/",
          "${hammer_devel::config_dir}/.hammer/cli.modules.d/"]:
    ensure  => 'directory',
    owner   => $hammer_devel::user,
    mode    => '0644'
  }

  file { "${hammer_devel::config_dir}/.hammer/cli.modules.d/foreman.yml":
    ensure  => file,
    content => template('hammer_devel/foreman.yml'),
    owner   => $hammer_devel::user,
    mode    => '0644'
  }

  file { "${hammer_devel::config_dir}/.hammer/cli.modules.d/katello.yml":
    ensure  => file,
    content => template('hammer_devel/katello.yml'),
    owner   => $hammer_devel::user,
    mode    => '0644'
  }

  file { "${hammer_devel::deployment_dir}/hammer-cli-katello/Gemfile.local":
    ensure  => file,
    content => template('hammer_devel/Gemfile.local'),
    owner   => $hammer_devel::user,
    mode    => '0644'
  }

}