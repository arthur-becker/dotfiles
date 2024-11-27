BIN_DIR="$HOME/.local/bin"
export PATH="$BIN_DIR:$PATH"

# Dotfiles management
alias my-dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Load local configuration
if [ -f ~/local.bashrc ]; then
    source ~/local.bashrc
fi

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# Tmux 
MY_SESSION_NAME="MySession"
alias my-tmux="tmux attach-session -t $MY_SESSION_NAME || tmux new-session -s $MY_SESSION_NAME"