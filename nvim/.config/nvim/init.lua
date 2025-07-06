-- INIT.LUA
--
-- KEY BINDINGS (built-in)
-- q: => open command history
-- :hi => open highlight groups for current buffer
-- m[A-Z] => create a global mark (persistant)
-- m[a-z] => create a local mark (persistant)
-- `[a-zA-z] => jump to a saved mark
-- <Ctrl>wc => window close
-- <Ctrl>wo => window only (i.e. close other windows)
-- <Ctrl>ws => window split
-- <Ctrl>wv => window split (vertical)
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
