return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewfile" },
        config = function()
            require("configs.treesitter")
        end,
    },

    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },

    {
        "marko-cerovac/material.nvim",
        lazy = false,
        config = function()
            require "configs.color"
        end,
    },

}
