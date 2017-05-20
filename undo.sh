#!/bin/bash
# This script removes all commit history without deletes any file.
# reference: http://stackoverflow.com/questions/13716658/how-to-delete-all-commit-history-in-github

# 1. Checkout
git checkout --orphan latest_branch

# 2. Add all the files
git add -A

# 3. Commit the changes
git commit -am "undo commit"

# 4. Delete the branch
git branch -D master

# 5. Rename the current branch to master
git branch -m master

# 6. Finally, force update your repository
git push -f origin master
