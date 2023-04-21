vim.g.mapleader = " "
-- We don't need ex mode
vim.keymap.set("n", "Q", "gq")
-- Makes ctrl-U less unweidly.
vim.keymap.set("i", "<C-U>", "<C-G>u<C-U>")

-- neat remaps from primeagen 
-- move selected lines up/down
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- don't move cursor position when doing J
vim.keymap.set("n", "J", "mzJ`z")
-- paste over word but keep paste buffer untouched
vim.keymap.set("x", "<leader>p", "\"_dP")
-- yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
-- replace selected word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
