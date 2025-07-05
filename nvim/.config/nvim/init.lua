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

-- everforest colorscheme
require("everforest").setup({
  background = "soft",
})
vim.cmd.colorscheme('everforest')

-- set leader
vim.g.mapleader = " "

-- configure undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
