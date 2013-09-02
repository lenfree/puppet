class httpd::service {


##declar variables
#$deb_httpd = "apache2"
#$rh_httpd  = "httpd"


    case $::operatingsystem { 
	'CentOS' : { $apache = "httpd" }
	'Ubuntu' : { $apache = "apache2" }
    }
        

    service { 'apache' :
         name	    => $apache, 
         ensure     => running,
         hasstatus  => true,
         hasrestart => true,
         enable     => true,
         require    => Class['httpd::install']
    }
}


