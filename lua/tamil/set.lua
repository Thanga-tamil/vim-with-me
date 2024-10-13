vim.opt.guicursor = ''
vim.g.mapleader = ' '

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.smartindent = true

vim.opt.updatetime = 40
vim.opt.colorcolumn = '145'

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.clipboard = 'unnamedplus'

