vim.loader.enable()

-- core
require "ph9t.autocommands"
require "ph9t.colorscheme"
require "ph9t.keymaps"
require "ph9t.options"

-- lsp
require "ph9t.cmp"
require "ph9t.lsp"
require "ph9t.lsp_lines"

-- treesitter
require "ph9t.autopairs"
require "ph9t.treesitter"

-- utilities
require "ph9t.aerial"
require "ph9t.alpha"
require "ph9t.bufferline"
require "ph9t.dressing"
require "ph9t.gs"
require "ph9t.illuminate"
require "ph9t.indent-blankline"
require "ph9t.lualine"
require "ph9t.nvim-surround"
require "ph9t.nvim-tree"
require "ph9t.presence"
require "ph9t.telescope"
require "ph9t.zen-mode"
