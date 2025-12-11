# GitHub Setup Instructions

## Create GitHub Repository

1. Go to https://github.com/new
2. **Repository name**: `cs152-expert-system` (or your choice)
3. **Description**: Expert System for Student City Recommendations (London/BA/Tokyo)
4. **Privacy**: Choose Public or Private
5. **DO NOT** check "Initialize with README" (we already have one)
6. Click **Create repository**

## Connect Local Repo to GitHub

After creating the repository on GitHub, run these commands:

```bash
cd "c:\Users\Omar_Huss\Desktop\CS152 LBA"

# Add GitHub remote (replace USERNAME with your GitHub username)
git remote add origin https://github.com/USERNAME/cs152-expert-system.git

# Push to GitHub
git push -u origin master
```

## Share with Teammates

1. **Add collaborators**: 
   - Go to your repo on GitHub
   - Click **Settings** → **Collaborators**
   - Add your teammates' GitHub usernames

2. **Teammates clone the repo**:
   ```bash
   git clone https://github.com/USERNAME/cs152-expert-system.git
   cd cs152-expert-system
   ```

## Daily Workflow

### Pull latest changes (before starting work):
```bash
git pull
```

### After making changes:
```bash
git add .
git commit -m "Describe what you changed"
git push
```

## Quick Commands Reference

| Command | Purpose |
|---------|---------|
| `git status` | Check what files changed |
| `git pull` | Get latest from teammates |
| `git add .` | Stage all changes |
| `git commit -m "message"` | Save changes locally |
| `git push` | Upload to GitHub |
| `git log --oneline` | See commit history |

---

**Next Step**: Create the GitHub repo and run the commands above to push! 🚀
