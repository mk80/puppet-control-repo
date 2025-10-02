class profile::zabbix_agent {
  class { 'zabbix::agent':
  agent_configfile_path => '/etc/zabbix/zabbix_agent2.conf',
  include_dir           => '/etc/zabbix/zabbix_agent2.d',
  include_dir_purge     => false,
  zabbix_package_agent  => 'zabbix-agent2',
  servicename           => 'zabbix-agent2',
  manage_startup_script => false,
  server                => 'quietbox-zabbix.madhash.io',
  manage_repo           => true,
  zabbix_package_state  => 'latest',
  zabbix_version        => '6.0',
  }
}