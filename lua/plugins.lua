return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Status line plugin.
	use({
		'glepnir/galaxyline.nvim',
		branch = 'main',
		-- your statusline
		config = function()
			require('plugins/statusline')
		end,
		-- some optional icons
		requires = { 'nvim-tree/nvim-web-devicons', opt = true },
	})

    -- Adds the tokyonight colorschemes.
	use 'folke/tokyonight.nvim'

    -- Git support via :G.
    use 'tpope/vim-fugitive'

    -- GitHub AI autocomplete.
    use 'github/copilot.vim'

    -- Multiple cursors functionality.
    use 'mg979/vim-visual-multi'

    -- iv and av text-objects.
    use {
        'Julian/vim-textobj-variable-segment',
        requires = { 'kana/vim-textobj-user' },
    }

    -- Leap - Amazing s and f commands.
    use {
        'ggandor/leap.nvim',
        requires = { 'tpope/vim-repeat' },
        config = function ()
            require('plugins/leap')
        end
    }
    
    -- Treesitter for Ast parsing!
    -- Note: There are additional installation instructions
    -- in https://github.com/wbthomason/packer.nvim about folding that I
    -- ignored.
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- Icons!
    use 'nvim-tree/nvim-web-devicons'

    -- Fuzzy finder.
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-tree/nvim-web-devicons' },
        },
    }

    -- Automatic Lsp Configurations.
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require('plugins/nvim-lspconfig')
        end,
    }

    -- Debugging
    use {
        'mfussenegger/nvim-dap',
        requires = { 'nvim-lua/plenary.nvim' },
    }

    -- Automatic rust configurations.
    use {
        'simrat39/rust-tools.nvim',
        config = function()
            require('plugins/rust-tools')
        end
    }

    -- Editing parenthesis with commands like `csiw{`.
    use {
        'tpope/vim-surround',
    }

    -- ai and ii text objects.
    use {
        'michaeljsmith/vim-indent-object'
    }

    -- Git magrins.
    use 'airblade/vim-gitgutter'

    use {
        'folke/twilight.nvim',
        config = function()
            require('twilight').setup {}
        end,
    }
    use {
        'folke/zen-mode.nvim',
        config = function()
            require('zen-mode').setup {}
        end,
    }

    use {
        "Maan2003/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
            -- Disable virtual_text since it's redundant due to lsp_lines.
            vim.diagnostic.config({
                virtual_text = false,
            })
        end,
    }

    -- Dispalying lists.
    use {
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end,
    }

    use {
        "SmiteshP/nvim-navic",
        requires = {
            "neovim/nvim-lspconfig",
        },
        config = function()
            require('nvim-navic').setup {
                lsp = {
                    auto_attach = true,
                },
            }
        end,
    }

    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "neovim/nvim-lspconfig",
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require('nvim-navbuddy').setup {
                lsp = {
                    auto_attach = true,
                },
                highlight = true,
            }
        end,
    }
    
    -- Install as secondary plugin for nvim-navic icon colors.
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            require('catppuccin').setup {
                integrations = {
                    navic = {
                        enabled = false,
                        custom_bg = "NONE",
                    },
                },
            }
        end,
    }
end)
