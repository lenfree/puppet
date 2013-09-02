class sshd::install {
    if $::operatingsystem == 'CentOS' { 
	package { 'openssh-server' :
    	         ensure => installed, 
        }
    } elsif $::operatingsystem == 'Ubuntu' {
	 package { 'openssh-server' :
                 ensure => installed,
        }
    }
			
}

#operatingsystem => CentOS
#operatingsystemmajrelease => 6

