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