local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {"python", "rust"}
lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  ft = {"python"},
}
-- lspconfig.rust_analyzer.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   ft = { "rust" }
-- }

