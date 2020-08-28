class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/mitchdubdub/control-repo',
  }
  include r10k::mcollective
  class {'r10k::webhook::config':
     use_mcollective => false,
     enable_ssl      => false,
  }
  class {'r10k::webhook':
    require => Class['r10k::webhook::config']
    user  => 'root',
    group => 'root',
  }
 }
  
