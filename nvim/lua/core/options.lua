vim.g.mapleader = "\\"

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.ruler = false

vim.opt.showmode = false
vim.opt.laststatus = 3

vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.fillchars = { eob = " " }
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.shortmess:append("sI")

vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true

-- nvim-tree.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-- lsp.lua
vim.diagnostic.disable()

-- cmp.lua
vim.opt.pumheight = 10
