local status_ok, ts_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

ts_config.setup {
    ensure_installed = {
        'bash',
        'c',
        'cmake',
        'cpp',
        'make',
        'go',
        'lua',
        'python',
        'json',
    },
    sync_install = false,
    ignore_install = {""},
    highlight = {
        enable = true,
        disable = {""},
        additional_vim_regex_hilighting = true,
    },
    indent = {
        enable = true,
        disable = {"yaml"},
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    },
    pairs = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
}
