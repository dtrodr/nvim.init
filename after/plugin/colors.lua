require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- disable italic for functions
  -- styles = {
  --   functions = {}
  -- },
  on_colors = function(colors)
    -- Brighter comments than "#636da6"
    colors.comment = "#8890bb"
  end
})

function Colorscheme(scheme)
    scheme = scheme or "tokyonight"
    vim.cmd.colorscheme(scheme)
    --If we want transparent bg again:
    --vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    --vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

Colorscheme()
