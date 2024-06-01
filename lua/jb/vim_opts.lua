-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- indentation
local indent = 4
vim.opt.tabstop = indent
vim.opt.shiftwidth = indent
vim.opt.softtabstop = indent
vim.opt.expandtab = true

-- UI
vim.opt.title = true
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Search
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- number
vim.opt.number = true
