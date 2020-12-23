Cameron's dotfiles

## Install
Run the install script:
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

