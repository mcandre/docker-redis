class { 'redis':
  redis_version_override => '3.0',
  service_restart => false,
  service_enable => false,
  service_ensure => 'stopped'
}
