
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local default_servers = {
    "html",
    "cssls",
    "pyright",
}

lspconfig.servers = {
    "lus_ls",
}

local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(default_servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

 lspconfig.lua_ls.setup {
   on_attach = nvlsp.on_attach,
   on_init = nvlsp.on_init,
   capabilities = nvlsp.capabilities,

    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
          undefined_global = false,
          missing_parameters = false,
        },
        workspace = {
          library = {
            vim.fn.expand "$VIMRUNTIME/lua",
            vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
            vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
            vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
            "${3rd}/luv/library",
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    },

 }


