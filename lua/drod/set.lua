-- General settings for editor behavior
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.wrap = false

-- Makes tab-characters visible using a special character
vim.opt.list = true
vim.opt.listchars = {
 --eol = "⏎",
 tab = "␉·",
 trail = "␠",
 nbsp = "⎵"
}
-- eol:⏎,tab:␉·,trail:␠,nbsp:⎵

vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
