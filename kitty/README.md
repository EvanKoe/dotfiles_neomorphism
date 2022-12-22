# Kitty

I use kitty because it supports ligatures and opacity. Nothing more. I was using Konsole before but it had a little bug with nvim so I changed it.

## Features

Nothing too fancy, I just added opacity (to blur it with picom) and a speical font (with ligatures of course).
I also added a little margin of 8px just to stay clean.

## Install

You have to install kitty first:
```bash
sudo apt install kitty # for debian based
sud pacman -S kitty # for arch based
```
  
Then, copy this config file to your `.config/kitty` directory:
```bash
mkdir -p "$HOME/.config/kitty"
cp kitty.conf "$HOME/.config/kitty"
```

> Note that if the config doesn't work, you may need to launch kitty with a special argument to load this config in particular

## special thanks

Thanks to [this guy](https://github.com/kawaegle) for his kitty dotfiles. He's a good guy. You should follow him.
