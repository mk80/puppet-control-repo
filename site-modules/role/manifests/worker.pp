class role::worker {
    class { 'kubernetes':
        worker              => true,
        kubernetes_version  => '1.34.0',
    }
}