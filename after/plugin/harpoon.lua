vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#63698c')
vim.cmd('highlight! HarpoonActive guibg=NONE guifg=white')
vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#7aa2f7')
vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')


local mark = require("harpoon.mark")
local ui = require("harpoon.mark")

vim.keymap.set("n", "<C-a>", function()
    require('harpoon.mark').add_file()
end)

vim.keymap.set("n", "<C-h>", function()
    require('harpoon.ui').toggle_quick_menu()
end)

vim.keymap.set("n", "<C-n>", function() require('harpoon.ui').nav_file(1) end)
vim.keymap.set("n", "<C-m>", function() require('harpoon.ui').nav_file(2) end)
vim.keymap.set("n", "<C-u>", function() require('harpoon.ui').nav_file(3) end)
vim.keymap.set("n", "<C-i>", function() require('harpoon.ui').nav_file(4) end)
