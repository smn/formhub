class formhub {
    package {[
        'default-jre',
        'gcc',
        'git',
        'python-dev',
        'python-virtualenv',
        'libjpeg-dev',
        'libfreetype6-dev',
        'zlib1g-dev',
        'rabbitmq-server',
        'mongodb']:
        ensure => installed
    }

    file { '/etc/init.d/celeryd':
        ensure => link,
        target => '/var/formhub/extras/celeryd/etc/init.d/celeryd',
    }

    file { '/etc/default/celeryd':
        ensure => link,
        target => '/var/formhub/extras/celeryd/etc/default/celeryd',
    }

    service { 'celeryd':
        ensure => running,
        subscribe => [
            File['/etc/init.d/celeryd'],
            File['/etc/default/celeryd'],
        ]
    }
}
