-- INIT.LUA
--
-- KEY BINDINGS (built-in)
-- q: => open command history
-- :hi => open highlight groups for current buffer
--
-- KEY BINDINGS (added)
-- <Space>u => toggle undo tree
--
-- PLUGINS
-- mbbill/undotree
-- neanias/everforest-nvim

-- colorscheme
vim.cmd.colorscheme('mcm')

-- set leader
vim.g.mapleader = " "

-- configure undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
