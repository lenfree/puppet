class httpd::config($path) {
        file { '/etc/httpd/conf/httpd.conf':
        source  => '${path}',
        mode    => '0600',
        require => Class[httpd::install],
    }
}
