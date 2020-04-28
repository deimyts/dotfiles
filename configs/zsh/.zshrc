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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
