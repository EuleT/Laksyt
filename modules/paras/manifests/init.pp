class paras{

	package {'apache2':
		ensure => 'installed',
		allowcdrom => 'true',

		}

	file { '/var/www/html/index.html':
		require => Package['apache2'],
		content => "<h1>Hei maailma</h1>\n",
		}

	exec { 'rm /var/www/html/index.html':
		command => 'sudo rm /var/www/html/index.html',
		path => ['/bin', '/usr/bin'],
		require => Package['apache2'],
		}

	}
