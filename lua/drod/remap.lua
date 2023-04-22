vim.g.mapleader = " "
-- We don't need ex mode
vim.keymap.set("n", "Q", "gq")
-- Makes ctrl-U less unweidly.
vim.keymap.set("i", "<C-U>", "<C-G>u<C-U>")

-- neat remaps from the primeagen 
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Open netrw explorer"})
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selected line down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selected line up"})
vim.keymap.set("n", "J", "mzJ`z", {desc = "Don't move cursor when doing J"})
vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste over word without losing paste buffer"})
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y", {desc = "Yank to system keyboard"})
vim.keymap.set(
    {"n", "v"}, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    {desc = "Replace word under cursor in file"}
)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
