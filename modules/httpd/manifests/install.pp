class httpd::install {

##declar variables
#$deb_httpd = "apache2"
#$rh_httpd  = "httpd"


    case $::operatingsystem {
        'Ubuntu' : { $apache = "apache2" }
	'CentOS' : { $apache = "httpd" }
    }	


    package { 'apache' :
	name   => $apache,
	ensure =>installed,
    }




		
}

#operatingsystem => CentOS
#operatingsystemmajrelease => 6

