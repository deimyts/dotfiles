Cameron's dotfiles

## Prerequisites
Run platform-specific dotfile installs before running this one, to ensure all apps & utilities are installed.

## Install & Setup

1. Clone Repo
```
$ mkdir ~/src && git clone https://github.com/deimyts/dotfiles.git ~/src/dotfiles && cd ~/src/dotfiles
```

2. Install Submodules:
```
git submodule update --init --recursive
```

3. Run the install script:
```
$ ./install
```

## Additional Setup

### Neovim Plugins
Run this command in neovim to install the plugins:
```
:PlugInstall
```

### Tmux Plugins
In tmux, install plugins with:
```
<prefix> + I
```

### SSH Setup
Uses the `ssh-manager` script from Adrien Denat's [dotfiles](https://github.com/Grsmto/dotfiles). 
(doesn't add key to keychain)

`ssh-manager` should have been added to the ~/bin directory, and it should already be in your path.

1. `ssh-manager new`
2. `eval "$(ssh-agent -s)"`
3. `ssh-add <path-to-new-key>` (MacOS: `ssh-add -K <path-to-new-key>` to add the key to your keychain)

### Node/NPM
```
1. `./bin/install_nvm`
2. `nvm install <version>`
```

### GPG Setup
After installing everything...
```
gpg --full-generate-key
```

## Managing Plugins & Submodules

### Add new submodule
```sh
git submodule add https://github.com/anishathalye/dotbot dotbot
```

### Initialize submodules
```sh
git submodule update --init --recursive
```

### Upgrade submodules
```sh
git submodule update --init --remote
```

