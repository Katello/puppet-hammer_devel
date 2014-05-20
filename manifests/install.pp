# hammer development install
class hammer_devel::install {

  vcsrepo { "${hammer_devel::deployment_dir}/hammer-cli-katello":
    ensure    => present,
    provider  => git,
    source    => 'https://github.com/Katello/hammer-cli-katello.git',
    remote    => 'upstream',
    user      => $hammer_devel::user
  }

  vcsrepo { "${hammer_devel::deployment_dir}/hammer-cli":
    ensure    => present,
    provider  => git,
    source    => 'https://github.com/theforeman/hammer-cli.git',
    remote    => 'upstream',
    user      => $hammer_devel::user
  }

  vcsrepo { "${hammer_devel::deployment_dir}/hammer-cli-foreman":
    ensure    => present,
    provider  => git,
    source    => 'https://github.com/theforeman/hammer-cli-foreman.git',
    remote    => 'upstream',
    user      => $hammer_devel::user
  }

  vcsrepo { "${hammer_devel::deployment_dir}/hammer-cli-foreman-tasks":
    ensure    => present,
    provider  => git,
    source    => 'https://github.com/theforeman/hammer-cli-foreman-tasks.git',
    remote    => 'upstream',
    user      => $hammer_devel::user
  }

}
