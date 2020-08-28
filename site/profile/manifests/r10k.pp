class profile::r10k {
  class { 'r10k':
    remote => 'https://github.com/mitchdubdub/control-repo',
  }
  class { 'r10k::webhook::config':
     use_mcollective => false,
     enable_ssl      => false,
     protected       => false,
     
  }
  class {'r10k::webhook':
    use_mcollective => false,
    user            => 'root',
    group           => '0',
    require         => Class['r10k::webhook::config'],
}
  
