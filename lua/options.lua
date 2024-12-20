require "nvchad.options"

local o = vim.o
o.nu = true
o.rnu = true
o.ruler = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true
o.wrap = true
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
o.hlsearch = true
o.incsearch = true
o.termguicolors = true
o.scrolloff = 8
o.signcolumn = "yes"
o.timeoutlen = 1000
o.updatetime = 50
o.guifont = "monospace:h17"
o.omnifunc = "v:lua.vim.lsp.omnifunc"
o.clipboard = "unnamedplus"

-- o.cursorlineopt ='both' -- to enable cursorline!
-- o.isfname:append("@-@")
