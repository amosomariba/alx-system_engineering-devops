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

