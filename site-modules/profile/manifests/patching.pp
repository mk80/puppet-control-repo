class profile::patching (
    # custom parameters.. ie days of the week and reboot
    $reboot_required = true,
) {
    include apt

    if $facts['os']['family'] == 'Debian' {
        class { 'unattended_upgrades':
        enable => 1,
        auto => {
          'reboot' => $reboot_required,
          'reboot_withusers' => true,
          'reboot_time' => now,
          'remove' => true,
        },
        update => 1,
        upgrade => 1,
        days    => [ 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat' ]  # 0, 1, 2, 3, 4, 5, 6
        }
    }
}