# 0-use_a_private_key

This script connects to a remote server using SSH with a specified private key.

## Description

- Uses the SSH protocol to connect to a server.
- Authenticates with the private key located at `~/.ssh/school`.
- Connects as the `ubuntu` user to the server at IP address `34.238.242.118`.

## Usage

```bash
./0-use_a_private_key
```

**Note:**  
Ensure that your private key (`~/.ssh/school`) exists and has the correct permissions (`chmod 600 ~/.ssh/school`).

## Requirements

- Bash shell
- SSH client installed
- Valid private key at `~/.ssh/school`

## Example

```bash
$ ./0-use_a_private_key
```

This will open an SSH session to the server.

# 1-create_ssh_key_pair

This script generates a new SSH key pair for secure authentication.

## Description

- Uses `ssh-keygen` to create a 4096-bit RSA key pair.
- The key pair is named `school`.
- The private key is protected with the passphrase `betty`.

## Usage

```bash
./1-create_ssh_key_pair
```

After running, you will have two files in your current directory:
- `school` (private key)
- `school.pub` (public key)

## Requirements

- Bash shell
- OpenSSH client (`ssh-keygen` command)

## Notes

- The passphrase for the private key is set to `betty`.
- Keep your private key secure and never share it.

# 2-ssh_config

This file is an SSH client configuration that simplifies connecting to a remote server.

## Description

- Defines a host alias `myserver` for easy SSH access.
- Specifies the server's IP address, user, and private key for authentication.
- Disables password authentication for improved security.

## Configuration Details

```ssh-config
Host myserver
    HostName 98.98.98.98
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
```

## Usage

After placing this configuration in your SSH config file (usually `~/.ssh/config`), connect to the server using:

```bash
ssh myserver
```

## Requirements

- OpenSSH client
- Private key at `~/.ssh/school` with correct permissions

## Notes

- Make sure your private key exists and is secured (`chmod 600 ~/.ssh/school`).
- This configuration disables password authentication; only key-based login is allowed.

