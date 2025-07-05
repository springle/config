-- INIT.LUA
--
-- KEY BINDINGS
-- <Space>u => toggle undo tree
--
-- PLUGINS
-- mbbill/undotree

-- colorscheme
vim.cmd.colorscheme('habamax')

-- set leader
vim.g.mapleader = " "

-- configure undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
