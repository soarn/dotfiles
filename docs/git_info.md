[Compare local and remote branches](https://stackoverflow.com/questions/11935633/git-diff-between-remote-and-local-repo)

    * git fetch origin master
    * git diff --summary FETCH_HEAD
    * git diff FETCH_HEAD -- mydir/myfile.js

[Undo local commits](https://www.digitalocean.com/community/questions/how-can-i-undo-my-last-git-commit)
```bash
To undo your last commit and leave the previously committed changes unstaged, use the command:

    git reset HEAD~

Personally, I like to keep this aliased to git uncommit for quick reference. To do so, add this to your git configuration:
~/.gitconfig

[alias]
    uncommit = "reset HEAD~"

If you’d like to undo the commit but leave the changes staged, run:

    git reset --soft HEAD~

If you simply want to redo the commit message, there is no need to rest. You can change the message using:

    git commit --amend

This can also be used to add changes to the previous commit. For example, to add a file that you forgot to include, run:

    git add forgotten_file
    git commit --amend

You’ll be given the opportunity to modify the commit message and the newly added file will be included.

To completely remove all traces of the last commit, nuke it from orbit with:

    git reset --hard HEAD~1

To revert to a specific previous commit, losing all history between, use:

    git reset --hard a731962

```

[Git Reflog Info](https://git-scm.com/docs/git-reflog)