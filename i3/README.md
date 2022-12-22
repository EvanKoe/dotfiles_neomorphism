# i3-gaps config

This is my i3-gaps config, which is strongly based on my previous
config you can find [here](https://github.com/EvanKoe/dotfiles_2022).

## Installation

For this, you will need `i3-gaps`, which is a real pain to install on Debian.
If you need any help installing it, look at [this resource](https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783).
  
Then, you need to copy my config into your `.config` folder.  
```bash
# If this directory doesn't already exist, create it
mkdir "$HOME/.config/i3" -p
cp config "$HOME/.config/i3/config"
```

> I suggest you to check the config because everything works as a global thing. Using pieces of code here and there probably won't work

## Once installed

Just launch i3 from your login manager and try it !  
```bash
$mod+e # to open kitty (terminal)
$mod+a # to open chromium (web browser)
$mod+Shift+e # to log out from i3
```

> You will have to replace the softwares called in this config with the one you want to use (for example, if you're using firefox, replace "chromium" with "firefox" in this config)

