node "puppet01.localdomain.com" {
	file { '/tmp/hello':
	    content => "Hello, world\n",
	}
}
