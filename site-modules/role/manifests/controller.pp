class role::controller {
    class { 'kubernetes':
        controller          => true,
        kubernetes_version  => '1.34.0',
        master_ip           => 'admin1.madhash.io',
        pod_network_cidr    => '10.244.0.0/16',
        container_runtime   => 'docker',
        cni_plugin          => 'flannel',
    }
}