vim.cmd('highlight clear')
if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end

vim.o.background = 'dark'
vim.g.colors_name = 'mcm'

local colors = {
  brown = '#4a1c02',
  blue = '#6592b0',
  green = '#61795e',
  orange = '#ae2c02',
  yellow = '#c27815',
  red = '#7f1903',
  text = '#d3c6aa',
  faded = '#574f3e',
  background = '#2d0f03',
}

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Core syntax groups
hl('Normal', { fg = colors.text, bg = colors.background })
hl('Comment', { fg = colors.green, italic = true })
hl('String', { fg = colors.yellow })
hl('Number', { fg = colors.orange })
hl('Boolean', { fg = colors.orange })
hl('Function', { fg = colors.text, bold = true })
hl('Keyword', { fg = colors.faded })
hl('Error', { fg = colors.red, bold = true })
hl('Warning', { fg = colors.orange })
hl('Visual', { bg = colors.brown })
hl('Cursor', { fg = colors.background, bg = colors.text })
hl('StatusLine', { fg = colors.text, bg = colors.background })
hl('StatusLineNC', { fg = colors.faded, bg = colors.background })
hl('LineNr', { fg = colors.green })
hl('CursorLineNr', { fg = colors.text, bold = true })
hl('Identifier', { fg = colors.text })
hl('Type', { fg = colors.faded })
hl('Constant', { fg = colors.orange })
hl('Special', { fg = colors.yellow })
hl('PreProc', { fg = colors.faded })
hl('Statement', { fg = colors.faded })
hl('Operator', { fg = colors.faded })
hl('Delimiter', { fg = colors.faded })

-- TreeSitter groups
hl('@variable', { fg = colors.text })
hl('@property', { fg = colors.text })
hl('@parameter', { fg = colors.text })
hl('@field', { fg = colors.text })
hl('@constant', { fg = colors.orange })
hl('@operator', { fg = colors.faded })
hl('@punctuation.bracket', { fg = colors.faded })
hl('@punctuation.delimiter', { fg = colors.faded })
