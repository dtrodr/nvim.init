vim.g.mapleader = " "
-- We don't need ex mode
vim.keymap.set("n", "Q", "gq")

-- Makes ctrl-U less unweidly.
vim.keymap.set("i", "<C-U>", "<C-G>u<C-U>")

-- Managing buffers
-- why did my shift tab break in xterm?
vim.keymap.set("n", "<leader><S-tab>", ":bp<CR>", {desc = "cycle (back) through open buffers"})
vim.keymap.set("n", "<leader><tab>", ":bn<CR>", {desc = "cycle through open buffers"})
-- leader is not a modifier so you can't hold it
vim.keymap.set("n", "<C-Left>", ":bp<CR>", {desc = "cycle (back) through open buffers"})
vim.keymap.set("n", "<C-Right>", ":bn<CR>", {desc = "cycle through open buffers"})
--vim.keymap.set("n", "<C-Down>", ":vsp<CR>", {desc = "Pull buffer into split"})

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

-- Managing terminal
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {desc = "Allow escape to exit terminal mode"})
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]] )
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]] )
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]] )
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]] )
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]] )
vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=horizontal<CR>", { desc = "Toggle term on bottom" } )
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { desc = "Toggle float term" } )
--
-- Reload
vim.keymap.set("n", "<leader><leader>", 
    function()
        vim.cmd("source")
    end,
    {desc = "source current buffer"}
)

vim.keymap.set("n", "<leader>fml", ":CellularAutomaton make_it_rain<CR>", {desc = "for those special days"})
