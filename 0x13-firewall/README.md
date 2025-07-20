# Firewall Setup Script

This script configures a basic firewall using UFW (Uncomplicated Firewall) on Ubuntu. It blocks all incoming traffic except for SSH (port 22), HTTP (port 80), and HTTPS (port 443), while allowing all outgoing traffic.

## Steps Performed

1. **Install UFW**  
   Updates package lists and installs UFW if not already present.

2. **Set Default Policies**

   - Deny all incoming traffic.
   - Allow all outgoing traffic.

3. **Allow Essential Ports**

   - SSH (22/tcp) for remote access.
   - HTTP (80/tcp) for web traffic.
   - HTTPS (443/tcp) for secure web traffic.

4. **Enable the Firewall**  
   Activates UFW with the configured rules.

5. **Check Status**  
   Displays the current firewall status and rules.

## Usage

Run the following commands in your terminal:

```bash
sudo apt update
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable
sudo ufw status verbose
```

## Notes

- Ensure SSH access is allowed before enabling the firewall to avoid being locked out.
- You can modify the allowed ports as needed for your use case.

## Reference

See the
