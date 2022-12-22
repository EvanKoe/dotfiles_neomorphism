local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("Colorscheme " .. colorscheme .. " not found !")
    return
end

vim.g.tokyonight_style = night
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebar = {"qf", "terminal", "packer"}
vim.g.tokyonight_colors = {hint = "orange", error = "#ff0000"}
