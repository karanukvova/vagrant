node 'name1.local' {
package { 'nginx':
    ensure => installed,
  }
file {'/etc/nginx/sites-enabled/nginx':
    owner => 'root',
    group => 'root',
    ensure => present,
    source => '/tmp/master/nginx',
  }
service { 'nginx':
    ensure => 'running',
    enable => true,
    require => Package['nginx']
  }
   include apt

   apt::ppa { 'ppa:openjdk-r/ppa':
       ensure => present,
   }
   exec { 'apt-update':
      command => '/usr/bin/apt-get update',
      require => [
        Apt::Ppa['ppa:openjdk-r/ppa']
       ],
    }

      package { 'openjdk-8-jdk':
        require  => [
          Exec['apt-update'],
          Apt::Ppa['ppa:openjdk-r/ppa'],
        ],
      }
}
