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
