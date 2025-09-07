# Shell Scripting
- Shebang is the first line in a script file
- It tells the system which interpreter should run the script
- **Shebang (#!)**
```bash
#!/bin/bash       # Run script using bash
#!/bin/sh         # Use the default shell (sh)
#!/bin/zsh        # Use zsh
#!/usr/bin/python3  # Run with Python
```


## To run
```bash
#!/bin/bash

chmod +x hello.sh

./hello.sh


#alternative
bash hello.sh

```


## Variables

```bash
#!/bin/bash
name="Rohit"
echo "Hello, $name!"

```
- No space around =
- Access with $variable

## User Input

```bash
#!/bin/bash
echo "Enter your name: "
read username
echo "Welcome, $username!"
```

## Conditionals

```bash
#!/bin/bash
age=18

if [ $age -ge 18 ]; then
  echo "You are an adult"
else
  echo "You are a minor"
fi
```
```bash
if [ condition1 ]; then
    # commands if condition1 is true
elif [ condition2 ]; then
    # commands if condition2 is true
elif [ condition3 ]; then
    # commands if condition3 is true
else
    # commands if none of the above are true
fi
```
```bash

```
```bash

```
```bash

```
```bash

```


