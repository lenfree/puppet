class sshd::service {
    service { "sshd" :
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class["sshd::config"]
    }
}
