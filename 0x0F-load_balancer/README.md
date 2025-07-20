# Custom HTTP Response Header Script

This script configures Nginx to return a custom HTTP header `X-Served-By` with the server's hostname in HTTP responses.

## Usage

1. Run the script:

   ```sh
   ./0-custom_http_response_header
   ```

2. The script will:
   - Install Nginx if it is not already installed.
   - Add the custom header to the default Nginx configuration.
   - Restart Nginx to apply the changes.

## Result

After running the script, all HTTP responses from Nginx will include a header like:

```
X-Served-By: <hostname>
```

where `<hostname>` is the name of your server.

## Requirements

- Ubuntu/Debian-based system
- Sudo privileges

## Notes

- The script modifies `/etc/nginx/sites-available/default`.
- Make sure to back up your Nginx configuration before running
