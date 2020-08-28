class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/mitchdubdub/control-repo',
  }
  class {'r10k::webhook::config':
     use_mcollective => false,
     enable_ssl      => false,
     protected       => false,
     
  }
  git_webhook { 'web_post_receive_webhook' :
    ensure       => present,
  }
}
  
