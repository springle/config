-- INIT.LUA
--
-- GLOBAL MARKS (conventions)
-- `I => init.lua
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
-- nvim-treesitter/nvim-treesitter

-- colorscheme
vim.cmd.colorscheme('mcm')

-- set leader
vim.g.mapleader = " "

-- configure undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- configure treesitter
require'nvim-treesitter.configs'.setup {
  -- Directory to install parsers and queries to
  parser_install_dir = vim.fn.stdpath('data') .. '/site',

  -- Ensure these parsers are installed
  ensure_installed = {
    'c',
    'css',
    'csv',
    'diff',
    'dockerfile',
    'git_config',
    'git_rebase',
    'gitattributes',
    'gitcommit',
    'gitignore',
    'graphql',
    'helm',
    'html',
    'http',
    'ini',
    'java',
    'javascript',
    'jq',
    'json',
    'kdl',
    'make',
    'markdown',
    'markdown_inline',
    'mermaid',
    'nginx',
    'python',
    'regex',
    'requirements',
    'rust',
    'sql',
    'ssh_config',
    'terraform',
    'tmux',
    'toml',
    'typescript',
    'xml',
    'yaml'
  },

  -- Enable syntax highlighting
  highlight = {
    enable = true,
  },
}
