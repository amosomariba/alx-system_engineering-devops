# Install Nginx and configure it to send a custom HTTP header
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => template('nginx/custom_header.erb'),
  notify  => Service['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(END),
    server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;

        server_name _;

        location / {
            add_header X-Served-By "$hostname";
            try_files \$uri \$uri/ =404;
        }
    }
    | END
  notify  => Service['nginx'],
}
