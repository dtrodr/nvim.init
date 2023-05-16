require('lualine').setup {
    options = {
        icons_enabled = true,
        -- Themes: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
        -- ' '
        theme = 'auto',
        --theme = 'rose-pine',
        component_separator = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            'branch',
            {
                "diff",
                diff_color = {
                    added = {fg = "#99c794"},
                    modified = {fg = "#5bb7b8"},
                    removed = {fg = "#ec5f67"},
                },
            },
            {
                'diagnostics',
                symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
            },
        },
        lualine_c = {{'filename', symbols = {modified = " 󱙃"}}},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{'filename', symbols = {modified = " 󱙃"}}},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline =  {
        lualine_a = {{'buffers', symbols = {modified = " 󱙃", alternate_file = "",}}},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'tabs'}
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
