# The base profile should include component modules that will be on all nodes
class profile::base (
  Array[String] $ntp_servers
) {
  class { 'ntp': 
    servers => $ntp_servers,
  }
}
