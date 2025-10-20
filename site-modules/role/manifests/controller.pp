class role::controller {
    class { 'kubernetes':
        controller => true,
        kubernetes_version => '1.27.0',
    }
}