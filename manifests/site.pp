node "puppet" {
  include role::master
}
node "puppet-01" {
  include role::elk
}
