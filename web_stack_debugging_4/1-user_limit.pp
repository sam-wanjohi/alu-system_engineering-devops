# Configuring OS to enable user "holberton: login & open a file without error message
exec { 'replace_hard_soft_limit_for_holberton_user':
  path    => '/usr/bin:/usr/sbin:/bin',
  command => 'sed -i "/holberton hard nofile/c\holberton hard nofile 4096" /etc/security/limits.conf;\
sed -i "/holberton soft nofile/c\holberton soft nofile 1024" /etc/security/limits.conf',
}
