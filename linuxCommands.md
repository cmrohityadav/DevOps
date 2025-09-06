# Common Linux Commands for Developers & DevOps

## 1. File and Directory Operations

```bash
ls           # List files and directories
ls -l        # Detailed list with permissions, size, owner
ls -a        # List all files including hidden files
cd /path     # Change directory
pwd          # Print current working directory
mkdir mydir  # Create a new directory
rmdir mydir  # Remove an empty directory
rm -rf mydir # Remove directory with content recursively
cp file1 file2   # Copy file1 to file2
mv file1 file2   # Move or rename a file
touch file1      # Create an empty file or update timestamp
cat file1        # Display file content
less file1       # View file content page by page
tail -f file.log # Follow log file updates in real-time
```
## File Permissions & Ownership

```bash

chmod 755 file1    # Change file permissions
chown user:group file1  # Change file owner and group
stat file1         # Show detailed info about file

```

## Process Management
```

ps aux            # List all running processes
top               # Interactive process monitoring
htop              # Enhanced interactive process viewer (if installed)
kill PID          # Kill process by PID
kill -9 PID       # Force kill process
jobs              # List background jobs
fg %1             # Bring job #1 to foreground
bg %1             # Resume job #1 in background

```

## Networking & Connectivity
    ```
    ping google.com       # Check network connectivity
curl http://example.com   # Fetch content from URL
wget http://example.com    # Download files
netstat -tuln        # Show listening ports
ss -tuln             # Modern alternative to netstat
ifconfig / ip a      # Show network interfaces
scp file user@host:/path   # Copy file over SSH
ssh user@host        # Connect to remote machine

    ```

## System Monitoring & Logs

```
df -h        # Disk usage
du -sh *     # Folder/file sizes
free -h      # Memory usage
uptime       # System uptime
dmesg        # Kernel logs
journalctl -xe # Systemd logs

```

## Package Management (Linux distro dependent)

```
# Debian/Ubuntu
apt update
apt upgrade
apt install package_name

# RedHat/CentOS
yum install package_name
dnf install package_name

# Arch Linux
pacman -S package_name

```

## Docker & Container Management
```
docker ps            # List running containers
docker images        # List downloaded images
docker run -it ubuntu bash  # Start a container
docker exec -it <container_id> bash  # Enter running container
docker stop <container_id>  # Stop a container
docker rm <container_id>    # Remove a container
docker rmi <image_id>       # Remove an image

```

## Archiving & Compression
```
tar -cvf archive.tar folder/       # Create a tar archive
tar -xvf archive.tar               # Extract tar archive
tar -czvf archive.tar.gz folder/   # Create gzip compressed archive
tar -xzvf archive.tar.gz           # Extract gzip compressed archive
zip -r archive.zip folder/         # Create zip archive
unzip archive.zip                  # Extract zip archive
```

## Searching & Filtering
```
grep "pattern" file        # Search for pattern in file
grep -r "pattern" ./       # Recursive search in directory
find /path -name "*.txt"   # Find files by name
locate file_name            # Find files quickly (updatedb required)
awk '{print $1}' file       # Print first column
sed 's/old/new/g' file      # Replace text in file

```

