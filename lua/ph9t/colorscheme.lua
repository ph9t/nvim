local colorname = "gruvbox-material"

vim.cmd "highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE"
vim.cmd "highlight clear SignColumn"

if colorname == "gruvbox-material" then
  require "ph9t.themes.gb-material"
elseif colorname == "ayu" then
  require("ph9t.themes.ayu").setup(colorname)
end
