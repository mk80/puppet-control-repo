class role::worker {
    class { 'kubernetes':
        worker              => true,
        kubernetes_version  => '1.34.0',
        master_ip           => 'admin1.madhash.io',
        container_runtime   => 'docker',
    }
}