vim.g.dap_virtual_text = true
vim.g.loaded_python3_provider = 1
vim.g.rustaceanvim = {
  inlay_hints = {
    highlight = "NonText",
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
  server = {
    on_attach = function(client, bufnr)
      local il_hints = require("lsp-inlayhints")
      il_hints.on_attach(client, bufnr)
    end
  }
}
