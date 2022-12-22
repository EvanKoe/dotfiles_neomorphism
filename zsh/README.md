# ZSH

I'm using oh-my-zsh. I know, it's bloat, but I was kinda lazy to create all these plugins on my own

## Plugins

It has not so many plugins, just the necessary one : 
```bash
git # which is not really used unless you enable the agnoster theme (uncomment the line ZSH_THEME in the config)
zsh-autosuggestion # which is really useful to get fish-like auto suggestions
vi-mode # because vi is life
sudo # with a double escape press, you can add 'sudo' at the beginning of your command (useful when you forget it and don't want to go to the start to add it manually)
```

## Features

This config has A LOT of aliases because I type too quickly and it happens so often to type `suod` instead of `sudo` of `isntall` instead of `install`.
In this case, aliases will take the lead and execute the right command, even with typos.

## Prompt

This ZSH config has a custom prompt I made myself (yeah, I'm kinda proud of it). It has clean rounded corners, but may be laggy with zsh-autosuggestion.

> Note that you must have nerd fonts installed to have the clean rounded corners

## Installation

Just copy this file to your `.zshrc`:
```bash
cp .zshrc "$HOME/.zshrc"
```
