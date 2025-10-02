class { 'zabbix::agent':
  server                => 'quietbox.madhash.io',
  manage_repo           => true,
  zabbix_package_state  => 'latest',
  zabbix_version        => '6.0',
}