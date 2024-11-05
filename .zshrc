# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Created by `pipx` on 2024-11-03 22:48:21
export PATH="$PATH:/Users/lumi/.local/bin"
# Add cargo to PATH
export PATH="$PATH:/Users/lumi/.cargo/bin"

# Configure GPG
export GPG_TTY=$(tty)

# Initialize oh-my-posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/ys.omp.json)"
