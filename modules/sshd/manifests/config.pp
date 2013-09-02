class sshd::config {
        file { '/etc/ssh/sshd_config':
        source  => 'puppet:///modules/sshd/sshd_config',
        mode    => '0600',
        require => Class[sshd::install],
    }
}
