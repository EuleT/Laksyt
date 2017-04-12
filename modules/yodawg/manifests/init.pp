class yodawg {
	
	package {'apache2':

		ensure => 'installed',
		allowcdrom => 'true',
	}

	file {'/var/wwww/html/index.html':
	
		require => Package['apache2'],
		content => 'Yo I put a dawg in your dawg so you can dawg while yo dawg',
	}
}
