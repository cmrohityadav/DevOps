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
## [shell script programs](/shellScripts/)



## Git
- DVCS (Distributed version control system)
- that tracks changes in your source code

### Github
- Cloud based hosting service
- Platform
- Git managed projects lives online
- Backup,sharing,automation
- Collaborate

### [Git more](/Git.md)


## Environment management
- Environment management is about how software teams create, configure, monitor, and maintain the different environments (like dev, test, staging, and production) where applications run. It ensures consistency, reliability, and speed across the software development lifecycle
- Port, DB URL,VPS, Credentails,OAuth credentials,CORS, lot of other things
- Dev -> Stage -> Prod
- Don't commit secrets to github 


## Docker
- Tool -> package an application ->code,libraries,runtime
- Container that can run anywhere
- Docker engine runs on the HOST OS  and manages containers,your app lives in a container,isolated from the host multiple containers side by side
- Docker ek tool hai jo tumhari app aur uske chalne ke liye jo-jo chahiye (jaise Node, MongoDB, ya Python version) — sab ek container me band kar deta hai.
- Phir wo container kahin bhi chala lo — apne laptop pe, server pe, ya cloud me — sab jagah same tarah chalega.
Soch lo jaise ek tiffin box hai jisme app + uska pura setup ready hai, bas tiffin kholte hi app serve ho jati hai
- Internally ye OS-level virtualization use karta hai (VM nahi), isliye ye lightweight aur fast hota hai.

### Docker Architecture Overview
- Docker mainly 3 core components me divide hota hai:
1. Docker Client
2. Docker Daemon (dockerd)
3. Docker Objects (Images, Containers, Volumes, Networks)

**Flow: Docker Client → Docker Daemon → Container**
1. **Docker Client (CLI / API Call)**
- Jab tum terminal me koi command dete ho, jaise:
```go
docker run nginx
```
- Ye Docker Client (CLI) hota hai jo command ko Docker Daemon ko send karta hai
- Client sirf ek interface hai — khud kuch nahi karta, bas instruction send karta hai

2. **Docker Daemon (dockerd)**
- Ye Docker ka main engine hai
- Client se API requests leta hai (via REST API, Unix socket, or TCP)

- Fir wo actual kaam karta hai:
    - Image pull karna (Docker Hub ya registry se)
    - Container create/run karna
    - Network, volumes manage karna
- Example flow for docker run nginx:
    - Daemon check karega: local me nginx image hai kya?
    - Agar nahi hai → Docker Hub se pull karega.
    - Image se container create karega.
    - Container ko start karega.
    - Client ko response bhej dega (container ID, logs, etc.)


3. **Container (Runtime Layer)**

- Jab Daemon image ko run karta hai, to ek container banta hai.

- Ye container ek isolated environment hota hai jisme:

    - Image ka content
    - File system (copy-on-write layer)
    - Network namespace
    - Process (application ka actual run)

### Commands
```bash
docker run -d -p 8080:80 nginx
```
| Part         | Meaning                                                                          |
| ------------ | -------------------------------------------------------------------------------- |
| `docker run` | Tells Docker to **create and start** a new container                             |
| `-d`         | Run the container in **detached mode** (in the background)                       |
| `-p 8080:80` | **Port mapping** → maps your **host’s port 8080** to the **container’s port 80** |
| `nginx`      | The **image** to use — Docker will use `nginx:latest` by default                 |


```bash
docker ps 
```
- only running containers

```bash
docker ps -a
```
- list all containers

```bash
docker stop container_id

docker stop container1 container2 containerN
```
- stop a running container

```bash
docker rm container_id
```
- First stop the container or use -f

```bash
docker container prune
```
- To remove all the container

```bash
docker rmi nginx

docker rmi nginx hello-world

docker rmi -f nginx
```
- To remove an Image

```bash
docker build -t mern-backend .

# run after building image
docker run -p 5000:5000 --name backend --env-file .env mern-backend
```
- docker build is used to build a Docker image from a Dockerfile



### Dockerfile


| Instruction | Description                                                                              |
| ----------- | ---------------------------------------------------------------------------------------- |
| **FROM**    | Specifies the base image (like `ubuntu`, `node`, `python`, etc.)                         |
| **WORKDIR** | Sets the working directory inside the container                                           |
| **COPY**    | Copies files from your local machine into the container                                  |
| **RUN**     | Runs a command during the image build process (e.g., install dependencies)               |
| **EXPOSE**  | Informs Docker that the container listens on a specific port                             |
| **CMD**     | Defines the default command to run when the container starts (only one `CMD` is allowed) |


```Dockerfile
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY  . .

EXPOSE 5000

CMD ["node", "server.js"]

```
### What WORKDIR /app Does
- This command tells Docker:
“From now on, everything I do (COPY, RUN, CMD, etc.) happens inside the folder /app inside the container.”

- If /app doesn’t exist yet, Docker will automatically create it for you.
You don’t have to manually run mkdir /app — Docker handles that


### Docker COPY Syntax

| Part            | Meaning                                                       | Location                                         |
| --------------- | ------------------------------------------------------------- | ------------------------------------------------ |
| `<source>`      | The file or folder you want to copy **from**                  | Your **local machine** (where the Dockerfile is) |
| `<destination>` | Where you want the file/folder to go **inside the container** | The **container’s filesystem**                   |


### EXPOSE

Think of EXPOSE 5000 like putting a sign on a door:

“This container is listening on port 5000.”

But you still need to open the door (with -p 5000:5000) to actually reach it from outside

### CMD
- When someone runs this container, execute node server.js from the current working directory
- Because WORKDIR /app was set earlier, the current directory is /app.
- Docker does not need a separate cd /app — it remembers the WORKDIR internally








