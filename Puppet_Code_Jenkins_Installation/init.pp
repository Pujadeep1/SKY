class jenkins {

    # perform update
    exec { 'apt-get update':
        command => 'apt-get update',
        require => File['/etc /apt/sources.list.d/jenkins.list'],
    }

    # source file
    file { '/etc /apt/sources.list.d/jenkins.list':
        content => "deb http://pkg.jenkins-ci.org/debian binary/\n",
        mode    => '0644',
        owner   => root,
        group   => root,
        require => Exec['install_jenkins_key'],
    }
	
	# jenkins package
    package { 'jenkins':
        ensure  => latest,
        require => Exec['apt-get update'],
    }

    # jenkins service
    service { 'jenkins':
        ensure  => running,
        require => Package['jenkins'],
    }
}