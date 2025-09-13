# Git
## Initialization
```bash
git init
```

## Git Lifecycle/workflow

- Working Dir → tu edit karta hai.

- Staging Area (Index) → tu decide karta hai “kaunse changes next commit me jayenge”.

- Repository (History) → jo permanently commit ho gaya.

- Ek line me: git add = tayyari, git commit = final seal 🔒

- Untracked → Staged → Committed → Modified

```bash

Untracked → ( git add ) → Staged

Staged → ( git commit ) → Committed

Committed → ( edit file ) → Modified

Modified →

git add karega → wapas **Staged**

git restore <file> karega → changes discard ho jaayenge → wapas Committed clean state

agar ignore karega → file modified hi rahegi until staged/committed/restore


# Flow after Modified

Modified → Staged (via git add)

Modified → Clean/Committed (via git restore or reset changes)

Modified → Commit directly? ❌ Nahin, direct commit possible nahi hai — staging se hi guzarna padta hai.

```

## .gitignore
- Plain text file where you list files and directories Git  should not track,basically git can ignore

### Rules & Patterns
- name/ → ignore a directory

- *.log → ignore all .log files

- !important.log → don’t ignore this file even if pattern matches

- **/temp/* → ignore every temp folder at any depth

## Commands
1. Branch rename

    ```bash
    # -m (move/rename safely)
    git branch -m old new

    # if u r working on same branch
    git branch -m main

    # -M (move/rename forcefully)
    git branch -M old new

    # if u r working on same branch
    git branch -M main


    ```

2. git Remote Basic

```bash

git remote add origin https://github.com/user/repo.git

# Check remotes
git remote -v

# Push (local → remote)
# Local main branch ko remote ke main branch pe bhej do.
git push origin main


git push -u origin main
# Ye -u (upstream set) kar deta hai, ab se tu sirf git push likhega to Git ko pata hoga kahan push karna hai.



# Pull (remote → local)

git pull origin main
# Remote changes laa ke merge kar deta hai local branch me.



# Fetch
git fetch origin
# Remote se latest commits download karta hai, but local branch me merge nahi karta.
# (Use hota hai compare ya inspect karne ke liye).



    
    
```

3. Branch
```bash

# list branch
git branch

# create branch
git branch nameofbranch

git switch -c newbranch


# switch branch
git switch nameofbranch




```

