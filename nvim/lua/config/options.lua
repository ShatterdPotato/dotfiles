vim.cmd("let netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.report = 999
-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings 
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

-- console colors/nvim theme
opt.termguicolors = true
vim.cmd('colorscheme hybrid')

-- backspace
opt.backspace = "indent,eol,start"

