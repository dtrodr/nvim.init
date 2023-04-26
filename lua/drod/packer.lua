-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({ 
        'rose-pine/neovim',
        as = 'rose-pine'
    })
    use ({
        'rafamadriz/neon',
        as = 'neon',
        config = function()
            vim.g.neon_style = 'dark'
            vim.cmd('colorscheme neon')
        end
    })
    use ({
        'marko-cerovac/material.nvim',
        config = function()
            vim.g.material_style = "deep ocean"
            -- vim.cmd('colorscheme material')
        end
    })
    use {'nvim-treesitter/nvim-treesitter', 
        run = ':TSUpdate',
        prefer_git = true
    }
    use {'nvim-treesitter/playground'}
    use {'tpope/vim-fugitive'}
    use {'tpope/vim-commentary'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-endwise'}
    -- use {'mbbill/undotree'}
    use { 'nvim-tree/nvim-web-devicons', opt = true }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {'Eandrju/cellular-automaton.nvim'}
end)
