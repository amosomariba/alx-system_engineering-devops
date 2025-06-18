# 0x03-shell_variables_expansions

## 0-alias

This script creates a shell alias:

```bash
alias ls='rm *'
```

**Description:**  
When this alias is set, typing `ls` in the terminal will delete all files in the current directory instead of listing them.

**Warning:**  
This is a dangerous alias and can cause loss of data. Use only for educational purposes and with extreme caution.

# 1-hello_you

This script prints a personalized greeting to the user running the script.

## How it works

- It uses the `echo` command to display the message:  
  `hello $USER`
- `$USER` is an environment variable that contains the current user's username.

**Example output:**
```
hello amos
```