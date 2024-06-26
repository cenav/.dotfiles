vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.colorcolumn = "90"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.wrap = false
vim.opt.smartindent = true

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 250 }
  end,
})

vim.cmd([[
  au BufNewFile,BufRead,BufReadPost *.tmp set syntax=plsql
]])


vim.cmd([[
  au BufNewFile,BufRead,BufReadPost *.keymap set syntax=dts
]])
