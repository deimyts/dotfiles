Cameron's dotfiles

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

## SSH Setup
Uses the `ssh-manager` script from Adrien Denat's [dotfiles](https://github.com/Grsmto/dotfiles). 

1. `./bin/ssh-manager new`
2. `eval "$(ssh-agent -s)"`
3. `ssh-add <path-to-new-key>`

## Plugins & Submodules

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

