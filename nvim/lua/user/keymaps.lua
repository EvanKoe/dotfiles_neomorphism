local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

--Remap space as leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- lsp floats
keymap("n", "<C- >", ":lua vim.diagnostic.open_float()<CR>", opts)
-- toggle NERD tree
keymap("n", "<C-n>", ":NERDTreeToggle<CR><CR>", opts)

-- split and vsplit
keymap("n", "<leader>v", ":vsplit<CR>", opts)
keymap("n", "<leader>s", ":split<CR>", opts)

-- move auround window
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- switch buffer or tab
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<Tab>", "a<Tab>", opts)
keymap("n", "<S-Tab>", ":tabprevious<CR>", opts)
keymap("n", "<C-t>", ":tabnew<CR>", opts)

-- make and open quickfix
keymap("n", "<leader>m", ":make<CR><CR>:copen<CR>", opts)

-- no search hightlight
keymap("n", "<leader><leader>", ":noh<CR>", opts)

-- save and quit
keymap("n", "<leader>ww", ":w!<CR>", opts)
keymap("n", "<leader>qq", ":q!<CR>", opts)
keymap("n", "<leader>wq", ":wq<CR>", opts)

-- indent selected text
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move selected text up down
keymap("v", "<A-j>", ":m '>+1<CR>gv-gv", opts)
keymap("n", "<A-j>", ":m '>+1<CR>gv-gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv-gv", opts)
keymap("n", "<A-k>", ":m '<-2<CR>gv-gv", opts)

-- sort selected line
keymap("v", "<leader>S", ":sort<CR>", opts)
