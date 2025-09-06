# Linux Basic Commands

1. Listing files in the current directory
```bash
ls

```



2. Printing the current working directory
```bash
pwd

```


3. Listing the root directory contents

```bash
ls /

```

4. Changing directory to root
```bash
cd /

```

5. create directory

```bash
mkdir foldername
```
6. create an empty file
```bash
touch fileName.extension

```

5. Delete file

```bash
rm fileName.extension
```
6. Delete an empty directory

```bash
rmdir directory_name

```
7. Delete a directory with files inside

```bash
rm -r directory_name

```
8. echo to write text

```bash
echo "Hello, this is a test" > txtfile.txt
```
9. Using nano text editor (interactive)

```bash
nano txtfile.txt

# Save and exit: Ctrl + O (write) → Enter → Ctrl + X (exit)
```
10. Using vi or vim (more advanced editor)

```bash
vi txtfile.txt
# Press i to enter insert mode.
# Type your text.
# Press Esc → type :wq → Enter to save and exit.


```
11. Search in current directory and all subdirectories

```bash
find . -name "file1.txt"

# . → search starting from current directory

# -name "file1.txt" → look for files with this exact name

# Case-insensitive search
find . -iname "File1.txt"

# Search from a specific directory
find /home/rohit/projects -name "file1.txt"

```

12. Using grep to search text in a file

```bash
# Case-sensitive search
grep "Rohit" rohit.txt

# Case-insensitive search
grep -i "rohit" rohit.txt

```


```bash


```


```bash


```


```bash


```