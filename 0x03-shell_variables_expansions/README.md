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

# 2-path

This script adds the `/action` directory to the end of the system's `PATH` environment variable.

## How it works

- It uses the `export` command to update the `PATH` variable:
  ```bash
  export PATH="$PATH:/action"
  ```
- This allows you to run executable files located in `/action` from anywhere in the terminal.

**Note:**  
This change only affects the current shell session.

# 3-paths

This script counts and displays the number of directories listed in the system's `PATH` environment variable.

## How it works

- It prints the value of `$PATH`.
- It replaces each colon (`:`) with a newline to separate the directories.
- It counts the number of non-empty lines (i.e., directories) using `grep -c .`.

**Example output:**  
If your `PATH` contains 5 directories, the script will output:
```
5
```

# 4-global_variables

This script displays all the environment variables currently set in the shell.

## How it works

- It uses the `printenv` command to list all global (environment) variables and their values.

**Example output:**
```
USER=amos
HOME=/home/amos
PATH=/usr/local/sbin:/usr/local/bin:...
...
```

# 5-local_variables

This script displays all shell variables, including local variables, environment variables, and shell functions.

## How it works

- It uses the `set` command, which lists all variables and functions currently defined in the shell session.

**Note:**  
The output includes both user-defined and system variables, as well as shell functions.

# 6-create_local_variable

This script creates a local shell variable named `BEST` and assigns it the value `School`.

## How it works

- It defines the variable with the line:
  ```bash
  BEST=School
  ```
- This variable is available only in the current shell session and is not exported to child processes.

**Note:**  
To access the value, use `$BEST` in the shell after running the script.

# 7-create_global_variable

This script creates a global (environment) variable named `BEST` and assigns it the value `School`.

## How it works

- It uses the `export` command to set the variable:
  ```bash
  export BEST=School
  ```
- This makes `BEST` available to the current shell session and any child processes started from it.

**Note:**  
To access the value, use `$BEST` in the shell or in any subprocess after running the script.

# 8-true_knowledge

This script prints the result of adding the value of the `TRUEKNOWLEDGE` variable to 128.

## How it works

- It uses arithmetic expansion to calculate `128 + TRUEKNOWLEDGE`:
  ```bash
  echo $((128 + TRUEKNOWLEDGE))
  ```
- `TRUEKNOWLEDGE` should be set as an environment or shell variable before running the script.
- If `TRUEKNOWLEDGE` is not set, it is treated as 0.

**Example usage:**
```bash
export TRUEKNOWLEDGE=10
./8-true_knowledge
# Output: 138
```
