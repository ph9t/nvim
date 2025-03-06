-- general autocommands setup
local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup

create_autocmd("InsertEnter", { pattern = "*", command = [[ set norelativenumber ]] })
create_autocmd("InsertLeave", { pattern = "*", command = [[ set relativenumber ]] })

local yank_group = create_augroup("YankHighlight", { clear = true })
create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yank_group,
})

create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local mark_line = vim.fn.line "'\""
    local last_line = vim.fn.line "$"

    if mark_line > 0 and mark_line <= last_line then
      vim.fn.setpos(".", vim.fn.getpos "'\"")
      vim.api.nvim_feedkeys("zz", "n", true)
    end
  end,
})

local plugin_group = create_augroup("AutoSource", { clear = true })
create_autocmd("BufWritePost", {
  pattern = "plugins.lua",
  command = [[ source <afile> | PackerSync ]],
  group = plugin_group,
})

create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    vim.lsp.buf.format()
  end,
})

create_autocmd("BufReadPost", {
  pattern = "quickfix",
  callback = function()
    local mapkey = vim.keymap.set

    mapkey("n", "[[", "<CMD>cp<CR>", { buffer = true })
    mapkey("n", "]]", "<CMD>cn<CR>", { buffer = true })
    mapkey("n", "<CR>", "<CMD>.cc<CR>", { buffer = true })
    -- mapkey("n", "<C-q>", "<CMD>ccl<CR>", { buffer = true })
    mapkey("n", "<C-q>", "<CMD>.close<CR>", { buffer = true })
  end,
})

create_autocmd(
  { "BufRead", "BufNewFile" },
  { pattern = { "*.htm", "*.html" }, command = [[ setlocal tabstop=2 shiftwidth=2 softtabstop=2 ]] }
)

create_autocmd("User", {
  pattern = "AlphaReady",
  callback = function()
    vim.opt.showtabline = 0
  end,
})

create_autocmd("BufUnload", {
  callback = function(args)
    vim.opt.showtabline = 2
  end,
})
