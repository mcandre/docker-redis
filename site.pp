class { 'redis':
  redis_version_override => '2.0',
  service_restart => false,
  service_enable => false,
  service_ensure => 'stopped'
}
