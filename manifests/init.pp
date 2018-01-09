class resolver (
   $nameserver01	= $resolver::params::nameserver01,
   $nameserver02        = $resolver::params::nameserver02,
   $domain 		= $resolver::params::domain,
) inherits resolver::params {
   file { '/etc/resolv.conf':
     ensure  => file,
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     content => template('resolver/resolv.conf.erb'),
   }
 }
