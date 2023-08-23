# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
##PL10K##if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
##PL10K##  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
##PL10K##fi

# If you come from bash you might have to change your $PATH.
# If it breaks, comment out the below line.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# !!BEGIN POWERLEVEL10k CONFIG!!
##PL10K##ZSH_THEME="powerlevel10k/powerlevel10k"

ZSH_THEME="spaceship"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  #zsh-motd
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  per-directory-history
  zsh-prompt-benchmark
)

source $ZSH/oh-my-zsh.sh

# https://www.sheldonhull.com/docs/shell/#installing-brew-packages
# Minimize Homebrew updates for each run, speeding things up
export HOMEBREW_NO_AUTO_UPDATE=1

# User configuration

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Atlassian dotfiles manager https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' 

#Synthwave TMUX color scheme that I might use later: http://dotshare.it/dots/1256/

# Use pywal to Restore without setting the wallpaper, and to not print anything.
wal -R -n -e -q

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Import Alises and Exports (These should be the last files sourced.)

if [ -f $HOME/.aliases ]; then
    . $HOME/.aliases
fi

if [ -f $HOME/.exports ]; then
    . $HOME/.exports
fi
export PATH=$PATH:/Users/jack/.spicetify

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
