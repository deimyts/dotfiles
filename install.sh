#!/usr/bin/env bash

# Get current dir (so you can run this script from anywhere)
export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# create a directory for get repos
mkdir ~/repos

# Symlink dotfiles into home directory
# -s: Create a symlink instead of a new file.
# -f: If the target file already exists, then unlink it so that the link may occur.
# -v: verbose: show files as they are processed.


ln -sfv "$DOTFILES_DIR/git/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/tmux/.tmux.conf" ~
# ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~
mkdir -p ~/.config/nvim
ln -sfv "$DOTFILES_DIR/vim/.vimrc" ~/.config/nvim/init.vim

chsh -s $(which zsh)
ln -sfv "$DOTFILES_DIR/zsh/.zshrc" ~

# Install plugin repos
# zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/repos/powerlevel9k

# tmux
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
