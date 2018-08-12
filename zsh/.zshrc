export DOTFILES="$HOME/repos/dotfiles"

# Required for TMUX
export TERM="xterm-256color"

# zsh options
source "$DOTFILES/zsh/imports/options"

# NVM
source "$DOTFILES/zsh/imports/nvm"

# PowerLevel9k theme
source "$DOTFILES/zsh/imports/powerlevel9k"

# aliases
source "$DOTFILES/zsh/imports/aliases"