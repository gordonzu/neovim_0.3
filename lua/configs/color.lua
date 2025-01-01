return {
 require("material").setup({
                contrast = {
                    terminal = true,
                    sidebars = true,
                    floating_windows = true,
                    cursor_line = false,
                    non_current_windows = true,
                    filetypes = {},
                },
                styles = { 
                    comments = { italic = true },
                    strings = {},
                    keywords = { underline = true },
                    functions = { italic = true },
                    variables = {},
                    operators = {},
                    types = {},
                },
                plugins = { 
                    "dap",
                    -- "dashboard",
                    "gitsigns",
                    -- "hop",
                    -- "indent-blankline",
                    -- "lspsaga",
                    -- "mini",
                    -- "neogit",
                    -- "neorg",
                    "nvim-cmp",
                    -- "nvim-navic",
                    "nvim-tree",
                    "nvim-web-devicons",
                    -- "sneak",
                    "telescope",
                    -- "trouble",
                    "which-key",
                },
                disable = {
                    colored_cursor = false,
                    borders = true,
                    background = false,
            term_colors = false,
                    eob_lines = false
                },
                high_visibility = {
                    lighter = false,
                    darker = false
                },
                lualine_style = "default",
                async_loading = true,
                custom_colors = nil,
                custom_highlights = {},

            }),

    config = function()
      vim.cmd([[colorscheme material]])
    end,

    vim.keymap.set("n", "<leader>z", function()
        require("material.functions").find_style()
    end),
}
