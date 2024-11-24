BIN_DIR="$HOME/.local/bin"
mkdir -p $BIN_DIR

curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir $BIN_DIR
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh -s -- --bin-dir $BIN_DIR

mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.1.1 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux