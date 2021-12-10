node "puppet" {
  include role::master
}
node "puppet-client01" {
  include role::elk
}
