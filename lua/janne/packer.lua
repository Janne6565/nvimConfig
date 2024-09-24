-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({ 'rose-pine/neovim', as = 'rose-pine' })

    vim.cmd('colorscheme rose-pine')

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('preservim/nerdtree')

    use('echasnovski/mini.ai')
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- LSP stuff
    use { 'neoclide/coc.nvim', branch = 'release' }


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use('rcarriga/nvim-notify')


    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter/nvim-treesitter' }, -- if you install parsers with `nvim-treesitter`
        config = function()
            require('treesj').setup({ --[[ your config ]] })
        end,
    })

    use('jrop/jq.nvim')
    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }
    use('voldikss/vim-floaterm')
    use('dawsers/telescope-floaterm.nvim')

    use {
        'kawre/leetcode.nvim',
        build = ':TSUpdate html',
        requires = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim', -- required by telescope
            'MunifTanjim/nui.nvim',

            -- optional dependencies
            'nvim-treesitter/nvim-treesitter',
            'rcarriga/nvim-notify',
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            -- configuration goes here
        end,
    }
    use('MunifTanjim/nui.nvim')
end)
