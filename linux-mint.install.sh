#! /usr/bin/env bash

# sudo apt-get update;
# apt-get upgrade;
# apt-get install git;

sudo apt-get install neovim;
sudo apt-get install tmux;
sudo apt-get install zsh;
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash;
export NVM_DIR="$HOME/.nvm";
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh";  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion";  # This loads nvm bash_completion
nvm install node;

#setup powerlevel9k and install fonts
git clone https://github.com/bhilburn/powerlevel9k.git $PLUGINS/powerlevel9k;
echo 'source  $PLUGINS/powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir -p ~/.local/share/fonts
mkdir -p ~/.config/fontconfig/conf.d

mv PowerlineSymbols.otf ~/.local/share/fonts/
fc-cache -vf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/