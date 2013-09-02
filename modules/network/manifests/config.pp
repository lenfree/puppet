class network::config {
    file { '/etc/sysconfig/network-scripts/ifcfg-eth0' :
        source  => 'puppet:///modules/network/ifcfg-eth0',
        mode    => '0644',
    }

    file { '/etc/sysconfig/network-scripts/ifcfg-eth1' :
        source  => 'puppet:///modules/network/ifcfg-eth1',
        mode    => '0644',
    }

}
