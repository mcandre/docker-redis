class { 'redis':
  redis_version_override => '2.3',
  service_restart => false,
  service_enable => false,
  service_ensure => 'stopped'
}
