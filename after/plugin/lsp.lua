local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- require('mason').setup()

-- require('mason-lspconfig').setup({
--   ensure_installed = {
--     -- Replace these with whatever servers you want to install
--     'pyright',
--     'perlls',
--   }
-- })

-- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
-- local lsp_attach = function(client, bufnr)
--   -- Create your keybindings here...
-- end

-- local lspconfig = require('lspconfig')
-- require('mason-lspconfig').setup_handlers({
--   function(server_name)
--     lspconfig[server_name].setup({
--       on_attach = lsp_attach,
--       capabilities = lsp_capabilities,
--     })
--   end,
-- })
