# DevOps
- Set of practices that combine Software development
- Aim an automating and improving the flow of dev
- testing
- deployment
## DEVELOPMENT + OPERATIONS
- build faster
- deploy safe
- easy to maintain

## Lifecycle of DevOps
1. Plan
2. Develop
3. Build
4. Test
5. Release
6. Deploy
7. Monitor

## Linux Commands
### [Linux basics Commands](/linux.md)


## Shell Scripting

- Shell = command-line interpreter (e.g., bash, zsh, sh)

- Shell script = text file with a sequence of shell commands
- **script -> text file -> series of commands that the Linux shell (Bash) will excute**

```bash
+---------------------------------------------------+
|                  Applications                     |
| (Browsers, IDEs, Games, Databases, AI tools)      |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                    Shell                          |
| (bash, zsh, sh, fish → User command interface)    |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|              Operating System (OS)                |
|   - User space (system libraries, daemons)        |
|   - Manages processes, memory, files, networking  |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                     Kernel                        |
|   - Core of OS                                     |
|   - Talks directly to hardware                    |
|   - Handles: CPU, RAM, GPU, Storage, Drivers      |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                   Hardware                        |
|  (CPU, RAM, GPU, Disk, Network, I/O devices)      |
+---------------------------------------------------+
```

```bash
Terminal (app) → launches Shell → sends commands to OS
```
- Terminal ≠ Shell (but people confuse them often).

- Terminal (emulator) → a program (app) that lets you open a text-based window to interact with your shell.

- Examples: gnome-terminal, konsole, alacritty, Windows Terminal.

- Shell → the program that interprets commands.

Examples: bash, zsh, fish.
```
+---------------------------------------------------+
|                  Applications                     |
|  (VS Code, Chrome, AI tools, Docker, etc.)        |
|                                                   |
|  ➝ Terminal Emulator (gnome-terminal, xterm,      |
|     Windows Terminal, Konsole)                    |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                    Shell                          |
| (bash, zsh, sh, fish → runs *inside Terminal*)    |
|                                                   |
| ➝ Interactive Mode: You type commands manually    |
| ➝ Scripting Mode: Run a file (.sh) with commands  |
|    = Shell Scripting (automation, DevOps, AI ops) |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                  Operating System                 |
|  (Ubuntu, Debian, CentOS, Windows, macOS)         |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                    Kernel                         |
|  (Linux kernel, Windows NT kernel)                |
|  ➝ Talks directly to hardware via drivers         |
+------------------------▲--------------------------+
                         |
+---------------------------------------------------+
|                   Hardware                        |
|  (CPU, GPU, RAM, Disk, Network, Peripherals)      |
+---------------------------------------------------+

```

## [Shell Scripting](/ShellScripting.md)

