local set = vim.keymap.set
set("", "<Space>", "<Nop>")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- general
set("n", "<leader>q", "<CMD>qa<CR>")
set("n", "<leader>ev", "<CMD>vsplit $MYVIMRC<CR>")
set("n", "<leader>rv", "<CMD>lua _G.reload_config()<CR>")
set("n", "<leader>tc", "lua _G.toggle_clipboard_sync")
set("n", "<leader>zz", "<CMD>w<CR>")
set({ "n", "i", "v" }, "<F9>", "<CMD>set wrap!<CR>")

set({ "n" }, "<Up>", "{")
set({ "n" }, "<Down>", "}")

set("v", "<", "<gv")
set("v", ">", ">gv")

-- search
set("n", "<CR>", "<CMD>nohlsearch<CR>")
-- "<CMD>set hlsearch! hlsearch?"

-- buffers, tabs, and windows
-- set("n", "<leader>z", "<CMD>tabe %<CR>")
set("n", "<leader>nb", "<CMD>new<CR>")
set("n", "<C-q>", "<CMD>bd | bp<CR>")
set("n", "<TAB>", "<CMD>bnext<CR>")
set("n", "<S-TAB>", "<CMD>bprev<CR>")

set("n", "<leader>vs", "<CMD>vsp<CR>")
set("n", "<leader>hs", "<CMD>sp<CR>")

-- set("n", "<C-h>", "<C-w>h")
-- set("n", "<C-l>", "<C-w>l")
-- set("n", "<C-k>", "<C-w>k")
-- set("n", "<C-j>", "<C-w>j")
--
-- set("n", "Q", "<Nop>")
-- set("n", "<C-a>", "<Nop>")
-- set("n", "<C-x>", "<Nop>")

set("n", "<S-Up>", "<CMD>resize +2<CR>")
set("n", "<S-Down>", "<CMD>resize -2<CR>")
set("n", "<S-Left>", "<CMD>vertical resize -2<CR>")
set("n", "<S-Right>", "<CMD>vertical resize +2<CR>")

vim.cmd [[
  inoremap <silent> <M-Up> <C-O>m`<C-O>:move -2<CR><C-O>``
  inoremap <silent> <M-Down> <C-O>m`<C-O>:move +1<CR><C-O>``

  vnoremap <silent> <M-Up> :<C-U>exec "'<,'>move '<-" . (1+v:count1)<CR>gv
  vnoremap <silent> <M-Down> :<C-U>exec "'<,'>move '>+" . (0+v:count1)<CR>gv

  nnoremap <silent> <M-Up> :<C-U>exec "exec 'norm m`' \| move -" . (1+v:count1)<CR>``
  nnoremap <silent> <M-Down> :<C-U>exec "exec 'norm m`' \| move +" . (0+v:count1)<CR>``
]]

-- nvim-tree
set("n", "<C-n>", "<CMD>NvimTreeToggle<CR>")

-- telescope
set(
  { "n" },
  "<leader>f",
  -- "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
  "<cmd>lua require'telescope.builtin'.find_files()<cr>"
)
set("n", "<leader>hf", "<cmd>lua require'telescope.builtin'.find_files({ hidden = true })<cr>")
set(
  "n",
  "<leader>b",
  "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)
set("n", "<c-t>", "<cmd>Telescope live_grep<cr>")
set("n", "<leader>ds", "<cmd>Telescope lsp_document_symbols<CR>")
set("n", "<leader>dd", "<cmd>Telescope diagnostics")
set("n", "<leader>ht", "<cmd>Telescope help_tags<CR>")
set(
  "n",
  "<leader>n",
  "<cmd>lua require('telescope').extensions.notify.notify(require('telescope.themes').get_dropdown())<CR>"
)

-- gitsigns
set("n", "<leader>gt", "<cmd>Gitsigns toggle_signs<cr>", { silent = true })
set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { silent = true })
set("n", "<leader>gg", "<cmd>Gitsigns preview_hunk<cr>", { silent = true })
set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { silent = true })
set("n", "<leader>gp", "<cmd>Gitsigns prev_hunk<cr>", { silent = true })
set("n", "<leader>gn", "<cmd>Gitsigns next_hunk<cr>", { silent = true })
set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<cr>", { silent = true })

-- bufferline
set("n", "<leader>p", "<cmd>BufferLinePick<cr>", { silent = true })

-- zen-mode
set("n", "<leader>zm", require("zen-mode").toggle, { silent = true })

-- harpoon
set("n", "-", require("harpoon.mark").add_file, { silent = true })
set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { silent = true })
set({ "n", "i" }, "<left>", require("harpoon.ui").nav_prev, { silent = true })
set({ "n", "i" }, "<right>", require("harpoon.ui").nav_next, { silent = true })

-- undo-tree
set("n", "<leader>u", vim.cmd.UndotreeToggle, { silent = true })
