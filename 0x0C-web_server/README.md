# 0x0C-web_server

This project contains scripts and files for managing and configuring web servers.

## Files

- **0-transfer_file**  
  Bash script to transfer a file to a remote server using `scp` with strict host key checking disabled.

- **some_page.html**  
  Example HTML page.

## Usage

### Transfer a File to a Remote Server

Use the `0-transfer_file` script to securely copy a file to a remote server.

**Syntax:**

```sh
./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
```
`PATH_TO_FILE`: Path to the file you want to transfer.
`IP`: IP address of the remote server.
`USERNAME`: Username for the remote server.
`PATH_TO_SSH_KEY`: Path to your SSH private key.

## Requirements
. Bash
. SSH access to the remote server
. SCP installed

## License
This project is for educational purposes.


# Install and Configure Nginx Web Server

## Description

This project includes a Bash script `1-install_nginx_web_server` that automates the installation and basic configuration of the **Nginx** web server on an Ubuntu machine.

After running the script, the web server will:
- Be installed and listening on port `80`
- Serve a page containing the string `Hello World!` when accessed at its root (`/`)

## Requirements

- Ubuntu 16.04 LTS server
- Use `apt-get` with `-y` flag to automate installation without prompts
- Do **not** use `systemctl` to restart or reload Nginx
- The page at `http://localhost/` and `http://<your_server_ip>/` must return:

