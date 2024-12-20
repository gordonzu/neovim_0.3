
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local default_servers = {
    "html",
    "cssls",
    "pyright",
    "lua_ls",
}

lspconfig.servers = {}

local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end



-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
