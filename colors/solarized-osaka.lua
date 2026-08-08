vim.cmd("highlight clear")

if vim.fn.exists("syntax.on") then
  vim.cmd("syntax reset")
end

vim.termguicolors = true
vim.g.colors_name = "solarized-osaka"

local colors = require("config.colors").colors

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- UI
hl("Normal", { fg = colors.base0, bg = colors.base04 })
hl("LineNr", { fg = colors.base03, bg = colors.base03 })
hl("CursorLineNr", { fg = colors.base3, bg = colors.base03, bold = true })
hl("Visual", { fg = colors.base03, bg = colors.base2 })
hl("CursorLine", { bg = colors.base03 })

-- Syntax
hl("Comment", { fg = colors.base01, italic = true })
hl("String", { fg = colors.blue })
hl("Function", { fg = colors.yellow, bold = true })
hl("Statement", { fg = colors.cyan })
hl("Keyword", { fg = colors.red })
hl("Type", { fg = colors.green })
hl("Number", { fg = colors.green, italic = true })
hl("Identifier", { fg = colors.blue })
hl("Operator", { fg = colors.cyan })
hl("Delimiter", { fg = colors.violet })

-- Plugins
hl("DashboardHeader", { fg = colors.yellow, bold = true })
