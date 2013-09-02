class network::service {
    service { "network" :
      ensure     => running,
      hasstatus  => true,
      hasrestart => true,
      enable     => true,
      require    => Class["network::config"]
    }
}
