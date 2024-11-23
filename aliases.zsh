# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reloadshell="exec zsh"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
#alias ll="/opt/homebrew/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/code"
CODE=$HOME/code
alias capstone="cd $HOME/code/capstone && source venv/bin/activate"
alias school="cd $HOME/code/school"
alias smt="cd $HOME/code/smt && source venv/bin/activate"

# ls
alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'
# https://denshub.com/en/best-ls-command-alternative/

# Git
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"
alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -S -m"
alias diff="git diff"
alias force="git push --force-with-lease"
#alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias prune="git fetch --prune"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"
alias fetch="git fetch --all"

# Flask
alias fk="flask --app app/app.py run --debug --host='0.0.0.0'"
