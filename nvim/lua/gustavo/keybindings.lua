local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-b>", ":NvimTreeToggle<cr>", opts)
keymap("n", "<C-f>", ":Telescope find_files<cr>", opts)
