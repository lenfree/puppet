node "puppet01.localdomain.com" {
	file { '/tmp/hello':
	    content => "Hello, world\n",
	}
}

node "cookbook1.localdomain.com" {
	include puppet

        file { '/tmp/hello':
            content => "Hello, cookbook1\n",
        }

}

