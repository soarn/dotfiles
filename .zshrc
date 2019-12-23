# If you come from bash you might have to change your $PATH.
# If it breaks, comment out the below line.
 export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=”true”
SPACESHIP_CHAR_SYMBOL=" \ue777"
SPACESHIP_CHAR_PREFIX="\uf296"
# SPACESHIP_CHAR_SUFFIX=(“ “)
SPACESHIP_CHAR_COLOR_SUCCESS=”yellow”
SPACESHIP_PROMPT_DEFAULT_PREFIX=”$USER”
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=”false”
SPACESHIP_USER_SHOW=”true”

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  gem zsh-nvm
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='nano'
# else
#   export EDITOR='nano'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
# alias ls="colorls — light — sort-dirs — report"
# alias lc="colorls — tree — light"
alias ls="colorls"
source $(dirname $(gem which colorls))/tab_complete.sh

# VLC alias - hi, this will only work on my Mac unless I upload the start script, what it does it start VLC with Discord rich presence
alias vlc="/jack/Documents/VLCRP/start.sh"

# Custom alises
alias ports="netstat -tulanp"
alias diff="colordiff"
alias mount="mount |column -t"
alias h="history"
alias j="jobs -l"
alias c="clear"
alias root="sudo -i"
alias su="sudo -i"
# System Usage aliases
alias meminfo="free -m -l -t"
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"
alias cpuinfo="lscupu"
alias gpumeminfo="grep -i --color memory /var/log/Xorg.o.log"

# Add scripts to the path, so that way I can use them.
export PATH="$PATH:$HOME/scripts"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

#source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Hi future Jack, make sure you do this

source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# This is for iTerm2 shell integration on my mac
source ~/.iterm2_shell_integration.zsh

#Uhhh I think I SDKMAN because its used to do something with gradle, I wrote a guide someplace...
export SDKMAN_DIR="$HOME.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# lol i forgot what this is for, I think it's for homebrew, but idk, also, why do all of these things say they have to be the very last PATH change, smh.
export PATH="/usr/local/sbin:$PATH"

# Hi this is the alias for my dotfile config stuff, I followed this guide: https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=/Users/jack/.cfg/ --work-tree=/Users/jack' 
