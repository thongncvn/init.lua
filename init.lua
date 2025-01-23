vim.cmd('colorscheme habamax')
vim.opt.wrap = false
-- Set indentation settings
vim.opt.expandtab = true    -- Use spaces instead of tabs
vim.opt.shiftwidth = 2      -- Number of spaces for each indentation
vim.opt.softtabstop = 2     -- Number of spaces for a tab in insert mode
vim.opt.tabstop = 2         -- Number of spaces for a tab
vim.opt.autoindent = true   -- Copy indentation from the current line when starting a new line
vim.opt.smartindent = true  -- Add extra indentation in some programming languages

require("config.lazy")
