# puppetdb
# Class: profile::puppetdb
#
#
class profile::puppetdb {
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}
