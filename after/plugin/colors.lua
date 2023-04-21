function Colorscheme(scheme)
    scheme = scheme or "neon"
    vim.cmd.colorscheme(scheme)
    --If we want transparent bg again:
    --vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

Colorscheme()
