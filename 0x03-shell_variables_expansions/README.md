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

# 9-divide_and_rule

This script calculates the result of dividing the value of the `POWER` environment variable by the value of the `DIVIDE` environment variable and prints the result.

## Usage

1. Make sure the script has execute permissions:
   ```bash
   chmod +x 9-divide_and_rule
   ```

2. Set the required environment variables before running the script:
   ```bash
   export POWER=20
   export DIVIDE=5
   ```

3. Run the script:
   ```bash
   ./9-divide_and_rule
   ```

## Notes

- Both `POWER` and `DIVIDE` must be set to integer values.
- If either variable is unset or not an integer, the script may output an error or unexpected result.
- Division by zero will result in an error.

## Example

```bash
export POWER=100
export DIVIDE=4
./9-divide_and_rule
# Output: 25
```

# 10-love_exponent_breath

This script calculates the value of the `BREATH` environment variable raised to the power of the `LOVE` environment variable and prints the result.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 10-love_exponent_breath
   ```

2. Set the required environment variables:
   ```bash
   export BREATH=2
   export LOVE=3
   ```

3. Run the script:
   ```bash
   ./10-love_exponent_breath
   ```

## Notes

- Both `BREATH` and `LOVE` must be set to integer values.
- If either variable is unset or not an integer, the script may output an error or unexpected result.

## Example

```bash
export BREATH=5
export LOVE=2
./10-love_exponent_breath
# Output: 25
```

# 11-binary_to_decimal

This script converts a binary number stored in the `BINARY` environment variable to its decimal equivalent and prints the result.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 11-binary_to_decimal
   ```

2. Set the `BINARY` environment variable to a valid binary number (containing only 0s and 1s):
   ```bash
   export BINARY=1011
   ```

3. Run the script:
   ```bash
   ./11-binary_to_decimal
   ```

## Notes

- The `BINARY` variable must contain a valid binary number.
- If `BINARY` is unset or contains invalid characters, the script may output an error or unexpected result.

## Example

```bash
export BINARY=1101
./11-binary_to_decimal
# Output: 13
```
# 12-combinations

This script prints all possible two-letter combinations of lowercase letters from `a` to `z`, except for the combination `oo`.

## How It Works

- Uses Bash brace expansion to generate all two-letter combinations (`{a..z}{a..z}`).
- Converts the output to one combination per line.
- Excludes the combination `oo` from the output.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 12-combinations
   ```

2. Run the script:
   ```bash
   ./12-combinations
   ```

## Output

- Each valid two-letter combination is printed on a new line.
- The combination `oo` is omitted.

## Example

```
aa
ab
ac
...
on
op
...
oz
pa
...
zz
```
*(All combinations except `oo` will be listed.)*

# 13-print_float

This script prints the value of the `NUM` environment variable as a floating-point number with two decimal places.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 13-print_float
   ```

2. Set the `NUM` environment variable to a valid number:
   ```bash
   export NUM=3.14159
   ```

3. Run the script:
   ```bash
   ./13-print_float
   ```

## Output

- The script prints the value of `NUM` rounded to two decimal places.

## Example

```bash
export NUM=7.456
./13-print_float
# Output: 7.46
```
# 100-decimal_to_hexadecimal

This script converts a decimal number stored in the `DECIMAL` environment variable to its hexadecimal representation and prints the result in lowercase.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 100-decimal_to_hexadecimal
   ```

2. Set the `DECIMAL` environment variable to a valid decimal number:
   ```bash
   export DECIMAL=255
   ```

3. Run the script:
   ```bash
   ./100-decimal_to_hexadecimal
   ```

## Output

- The script prints the hexadecimal equivalent of the decimal number in lowercase.

## Example

```bash
export DECIMAL=255
./100-decimal_to_hexadecimal
# Output: ff
```

# 101-rot13

This script encodes or decodes input text using the ROT13 cipher.

## How It Works

- The script uses the `tr` command to perform ROT13 transformation, which shifts each letter by 13 places in the alphabet.
- Both uppercase and lowercase letters are supported.
- Non-alphabetic characters are not changed.

## Usage

1. Make the script executable:
   ```bash
   chmod +x 101-rot13
   ```

2. Provide input to the script using echo and a pipe, or by typing directly and pressing `Ctrl+D` to end input:
   ```bash
   echo "Hello, World!" | ./101-rot13
   ```

   or

   ```bash
   ./101-rot13
   Type your text here
   [Press Ctrl+D]
   ```

## Example

```bash
echo "Hello, World!" | ./101-rot13
# Output: Uryyb, Jbeyq!
```

## Notes

- Running the script twice on the same input will return the original text.

# 102-odd

This script prints only the odd-numbered lines from its input.

## How It Works

- Reads input line by line.
- Prints lines with odd numbers (1st, 3rd, 5th, etc.).

## Usage

1. Make the script executable:
   ```bash
   chmod +x 102-odd
   ```

2. Provide input using a pipe or input redirection:
   ```bash
   cat filename.txt | ./102-odd
   ```
   or
   ```bash
   ./102-odd < filename.txt
   ```

3. You can also type input directly and press `Ctrl+D` to end:
   ```bash
   ./102-odd
   line1
   line2
   line3
   [Press Ctrl+D]
   ```

## Example

Input:
```
a
b
c
d
e
```

Output:
```
a
c
e
```