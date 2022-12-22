local ok1, lsp = pcall(require, "lsp-zero")
local ok2, dap = pcall(require, "dap")
local ok3, mason = pcall(require, "mason")
local ok4, mason_config = pcall(require, "mason-lspconfig")
local ok5, mason_dap = pcall(require, "mason-nvim-dap")

if not ok1 or not ok2 or not ok3 or not ok4 or not ok5 then
    return
end

mason.setup({
    ui = {
        border = "rounded",
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_config.setup({
    ensure_installed = {"pyright", "clangd", "diagnosticls", "cmake", "bashls"},
    automatic_installation = true,
})

lsp.preset('lsp-compe')
lsp.setup()
lsp.set_preferences({
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = true,
  configure_diagnostics = true,
  cmp_capabilities = true,
  call_servers = 'local',
  sign_icons = {
    error = '✘',
    warn = '',
    hint = '⚑',
    info = ''
  }
})

mason_dap.setup({
    ensure_installed = {"cpptools"},
    automatic_setup = true,
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities

vim.diagnostic.config({
  virtual_text = false
})
