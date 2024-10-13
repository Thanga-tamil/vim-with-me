vim.api.nvim_set_keymap('i', '<C-j>', "<Esc>", { noremap = true })
vim.api.nvim_set_keymap('n', 'w', 'b', { noremap = true })
vim.api.nvim_set_keymap('n', 'r', '<C-r>', { noremap = true })

vim.api.nvim_set_keymap('n', 'dw', 'db', { noremap = true })
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) bydefault terminated cuz of nvim-tree
vim.keymap.set('n', 'sv', vim.cmd.vsplit)

vim.api.nvim_set_keymap('n', '<leader>v', '<C-v>', { noremap = true })

require("symbols-outline").setup()
vim.api.nvim_set_keymap('n', '<leader>o', ':SymbolsOutline<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>gs", vim.cmd.Git); -- git
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set('n', "<leader>g", ':Grepper<CR>')
vim.keymap.set('n', "]q", ':cnext <CR>')
vim.keymap.set('n', "[q", ':cprev <CR>')

--vim.api.nvim_set_keymap('n', '<Leader>c', [[:%s/]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { noremap = true, silent = true })
