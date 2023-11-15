# install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

package { 'build-essential':
  ensure => installed,
}

package { 'libssl-dev':
  ensure => installed,
}

package { 'libffi-dev':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/bin',
  unless  => '/usr/local/bin/flask --version | grep "Flask 2.1.0"',
}


