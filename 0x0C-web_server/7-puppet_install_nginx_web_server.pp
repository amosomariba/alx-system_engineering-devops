# 5-puppet_nginx_redirect.pp

# Ensure Nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
}

# Create a custom index.html with "Hello World!" at root
file { '/var/www/html/index.html':
  ensure  => file,
  content => "Hello World!\n",
  require => Package['nginx'],
}

# Configure default Nginx site with 301 redirect
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOF),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location = /redirect_me {
        return 301 /;
    }
}
  | EOF
  notify  => Service['nginx'],
  require => Package['nginx'],
}
