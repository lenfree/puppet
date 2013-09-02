node "local" {
   class { 'httpd::config' :
     path => 'puppet:///modules/httpd/httpd.conf'
   }
}


