# The base profile should include component modules that will be on all nodes
class profile::base (
  Array[String] $ntp_servers
) {
  class { 'ntp': 
    servers => $ntp_servers,
  },
  {
  class { 'unattended_upgrades':
    enable => 1,
    auto => {
      'reboot' => true,
      'reboot_withusers' => true,
      'reboot_time' => now,
      'remove' => true
    },
    update => 1,
    upgrade => 1,
    days    => [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ]  # 0, 1, 2, 3, 4, 5, 6
    }
  }
}
