local options = {
  -- general
  background = "dark",
  backup = false,
  clipboard = "unnamedplus",
  cursorline = true,
  cursorlineopt = "number",
  fileencoding = "utf-8",
  mousemoveevent = true,
  swapfile = false,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 1500,
  wrap = true,
  writebackup = false,

  -- display
  cmdheight = 1,
  laststatus = 3,
  linebreak = true,
  number = true,
  relativenumber = true,
  scrolloff = 5,
  showmatch = true,
  showmode = false,
  showtabline = 4,
  signcolumn = "yes:1",
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  wildmenu = true,
  wildoptions = "pum",
  winbar = "%m %t 🦖  %{%v:lua.require'nvim-navic'.get_location()%}",

  hidden = true,

  -- tabs, indentations
  expandtab = true,
  shiftwidth = 2,
  smartindent = true,
  softtabstop = 2,
  tabstop = 2,

  -- search, highlighting
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  smartcase = true,

  backspace = "indent,eol,start",
  list = true,
  listchars = "tab:⍿·,trail:•",
}

local additionals = {
  fillchars = "eob: ",
  shortmess = "I",
  -- mouse = "c",
  mouse = "a",
  -- rtp = "/opt/homebrew/opt/fzf",
  iskeyword = "-",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(additionals) do
  vim.opt[k]:append(v)
end

vim.cmd "syntax enable"
vim.cmd "set noerrorbells visualbell t_vb="
vim.cmd "filetype plugin indent on"
