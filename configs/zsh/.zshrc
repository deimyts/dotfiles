# environment variables
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME-$HOME/.config}

source "$XDG_CONFIG_HOME/env"

# zsh options
source "$DOTFILES/zsh/imports/options"

# NVM
source "$DOTFILES/zsh/imports/nvm"

# PowerLevel9k theme
source "$DOTFILES/zsh/imports/powerlevel9k"

# aliases
source "$DOTFILES/zsh/imports/aliases"
