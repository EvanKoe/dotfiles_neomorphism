# Polybar

I didn't do so much for the polybar config. I especially used [this theme](https://github.com/adi1090x/polybar-themes#material) and modified it a little bit.

## Installation

Install `polybar` for your system. Must be something like this :
```bash
sudo apt install polybar # debian based
sudo pacman -S polybar # arch based
sudo dnf install polybar # red hat based
```

And then copy the whole polybar directory in the `.config` path :
```bash 
mkdir -p "$HOME/.config/polybar"
cp -r ./* "$HOME/.config/polybar"
```

## Features

### Left

You can click on the blue button, it will launch rofi as a dmenu. 
> Note that you need rofi installed

```bash
sudo apt install rofi
```
  
Then you have three icons : terminal, file explorer and web browser. They launch the program on click.

### Center

Here are displayed your virtual desktops.

### Right

There is here your sound level, your battery level, date, and your shutdown menu, which also requires Rofi

> WARNING ! I didn't add the tray in this bar. You can add it by setting the `tray-position` in `material/config.ini` to `left/right/center`

## Special thanks

Thanks to [this guy](https://github.com/adi1090x) for creating its polybar themes repo, because it helped me a lot !
