-- General --
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Buffers --

vim.keymap.set("n", "<leader>n", vim.cmd.BufferNext)
vim.keymap.set("n", "<leader>b", vim.cmd.BufferPrevious)
vim.keymap.set("n", "<leader>c", vim.cmd.BufferClose)

-- Telescope --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- Neogit --
vim.keymap.set('n', '<leader>g', vim.cmd.Neogit)
