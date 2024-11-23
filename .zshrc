# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Initialize oh-my-posh
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/ys.omp.json)"

# Import aliases and exports
if [ -f $DOTFILES/aliases.zsh ]; then
	. $DOTFILES/aliases.zsh
fi

if [ -f $DOTFILES/exports.zsh ]; then
	. $DOTFILES/exports.zsh
fi

