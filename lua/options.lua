vim.opt.nu = true
vim.opt.rnu = true

-- Tab settings.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Detect filetype.
vim.cmd("filetype on")

-- Errors and things around the code.
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"

vim.opt.shortmess:append("c")

-- Colorscheme.
-- vim.cmd [[colorscheme catppuccin-macchiato]]
vim.cmd [[colorscheme tokyonight-night]]

-- TODO:
-- let g:copilot_assume_mapped = v:true
