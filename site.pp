class { 'redis':
  redis_version_override => '2.9',
  service_restart => false,
  service_enable => false,
  service_ensure => 'stopped'
}
