vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'mcm'

local colors = {
  green = '#61795e',
  orange = '#ae2c02',
  yellow = '#c27815',
  red = '#7f1903',
  text = '#d3c6aa',
  background = '#2d0f03',
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hl('Normal', { fg = colors.text, bg = colors.background })
hl('Comment', { fg = colors.green, italic = true })
hl('String', { fg = colors.yellow })
hl('Number', { fg = colors.orange })
hl('Boolean', { fg = colors.orange })
hl('Function', { fg = colors.text, bold = true })
hl('Keyword', { fg = colors.red })
hl('Error', { fg = colors.red, bold = true })
hl('Warning', { fg = colors.orange })
hl('Visual', { bg = colors.green })
hl('Cursor', { fg = colors.background, bg = colors.text })
hl('StatusLine', { fg = colors.text, bg = colors.background })
hl('LineNr', { fg = colors.green })
hl('CursorLineNr', { fg = colors.text, bold = true })
