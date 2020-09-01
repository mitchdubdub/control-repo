# puppetdb
# Class: profile::puppetdb
#
#
class profile::puppetdb {
  node 'master' {
    # Configure puppetdb and its underlying database
    class { 'puppetdb': }
    # Configure the Puppet master to use puppetdb
    class { 'puppetdb::master::config': }
  }
}
