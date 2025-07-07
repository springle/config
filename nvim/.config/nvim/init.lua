-- INIT.LUA
--
-- GLOBAL MARKS (conventions)
-- `I => init.lua
--
-- COMMANDS (built-in)
-- :InspectTree => view treesitter AST
-- :hi => open highlight groups for current buffer
--
-- KEY BINDINGS (built-in)
-- q: => open command history
-- m[A-Z] => create a global mark (persistant)
-- m[a-z] => create a local mark (persistant)
-- `[a-zA-z] => jump to a saved mark
-- <Ctrl>wc => window close
-- <Ctrl>wo => window only (i.e. close other windows)
-- <Ctrl>ws => window split
-- <Ctrl>wv => window split (vertical)
-- <Ctrl>wd => show diagnostic
-- [d or ]d => prev/next diagnostic
--
-- KEY BINDINGS (added)
-- <Space>u => toggle undo tree
-- <Space>. => show LSP actions
--
-- PLUGINS INSTALLED
-- mbbill/undotree
-- neanias/everforest-nvim
-- nvim-treesitter/nvim-treesitter
-- neovim/nvim-lspconfig
--
-- PLUGINS TO TRY
-- ThePrimeagen/refactoring.nvim
-- stevearc/conform.nvim

-- colorscheme
vim.cmd.colorscheme('retrobox')

-- set leader
vim.g.mapleader = " "

-- configure undo tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- LSP code actions
vim.keymap.set('n', '<leader>.', vim.lsp.buf.code_action, { desc = 'Code Action' })

-- indentation and formatting settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.cindent = true

-- configure lsp(s)
vim.lsp.enable('ruff')
vim.lsp.enable('ty')

-- configure treesitter
require'nvim-treesitter.configs'.setup {
  parser_install_dir = vim.fn.stdpath('data') .. '/site',
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
    'lua',
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
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
