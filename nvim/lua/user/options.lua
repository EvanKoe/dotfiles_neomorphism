local options = {
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 0,
    completeopt = { "menuone", "noselect" },
    conceallevel = 0,
    fileencoding = "utf-8",
    hlsearch = true,
    ignorecase = true,
    mouse = "n",
    pumheight = 10,
    showmode = true,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    expandtab = true,
    shiftwidth = 2,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes:1",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    listchars = "eol:↓,trail:●,space:·",
    list = true,
}

vim.opt.shortmess:append "c"

for i, j in pairs(options) do
    vim.opt[i] = j
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.api.nvim_create_autocmd({"InsertLeave"}, {
    pattern = "*",
    callback = function ()
        if vim.bo.filetype == "markdown" or vim.bo.filetype == "text" then
            return
        end
        vim.cmd [[ :%s/\s+$//e ]]
    end,
})


vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = {"*.c", "*.cpp", "*.py", "*.h", "*.hpp"},
    callback = function ()
        vim.opt.shiftwidth = 4
    end,
})
-- colorcolumn = "80" for all but not txt and md
