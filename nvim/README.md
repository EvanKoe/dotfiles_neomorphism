# NVim configuration

This is a minimal NVim configuration for a daily use.

## Keybindings

Here are some keybindings that are used in this config :  
`<C- >` (control space) : opens a beautiful floating window with the error/warning on the current line  
`<C-n` (control n) : toggles NerdTree (file explorer on left side)  
`<leader>v` (space v) : equivalent to `:vsplit`  
`<leader>s` (space s) : equivalent to `:split`  
`<leader>m` (space m) : for any make-compilated language (C, C++...), run Makefile and opens program  
`<leader><leader>` (double space) : no highlight for search  
`<leader>ww` (space double w) : force save  
`<leader>qq` (space double q) : force quit  
`<leader>wq` (space w q) : equivalent to `:wq`  
  
## Features

The lualine was modified to get a beautiful and useful line, without denaturing the vim look and feel.
Note that you will need [nerd fonts](https://github.com/ryanoasis/nerd-fonts) installed for it to look fresh with those tasteful rounded corners.

We use NerdTree to have a nice file explorer.

LSP has been updated to Mason in order to use the last technologies in neovim. It works well and it's all configured for you !

## Special thanks

Thanks to [Kawaegle](https://github.com/kawaegle) for its neovim config base, which is so awesome, and for its clear code, that I found easy to edit to make it mine !
