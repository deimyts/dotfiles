export XDG_CONFIG_HOME="$HOME/.config"
export DOTFILES="$XDG_CONFIG_HOME/dotfiles"
export PLUGINS="$HOME/lib"

# Required for TMUX
export TERM="screen-256color"

# zsh options
source "$DOTFILES/zsh/imports/options"

# NVM
source "$DOTFILES/zsh/imports/nvm"

# PowerLevel9k theme
source "$DOTFILES/zsh/imports/powerlevel9k"

# aliases
source "$DOTFILES/zsh/imports/aliases"
