vim.opt.clipboard = "unnamedplus" -- Allow use clipboard
vim.opt.mouse = "a" -- Use mouse
vim.opt.shiftwidth = 2 -- Set tabs
vim.opt.tabstop = 2 
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Relative number in line
vim.opt.undofile = true -- Force undo
vim.opt.termguicolors = true

-- highlight option
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5

-- Staline options
vim.opt.laststatus = 2
vim.opt.showtabline = 2

vim.cmd "colorscheme gruber" -- set colorscheme
