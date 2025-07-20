# 0-custom_http_response_header

This script configures Nginx to return a custom HTTP header: `X-Served-By: <hostname>`. The header helps identify which server handled the request, useful for debugging and load balancing scenarios.

## Features

- Installs Nginx if not already present
- Adds a custom HTTP response header to the default Nginx site config
- Restarts Nginx to apply changes

## Usage

1. Make the script executable:
   ```sh
   chmod +x 0-custom_http_response_header