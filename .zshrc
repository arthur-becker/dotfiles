BIN_DIR="$HOME/.local/bin"
export PATH="$BIN_DIR:$PATH"

# Dotfiles management
alias my-dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Load local configuration
if [ -f ~/local.zshrc ]; then
    source ~/local.zshrc
fi

# Starship prompt
eval "$(starship init zsh)"

# Autocompletion
if [ -f $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Zoxide: smarter cd command
eval "$(zoxide init zsh)"

