local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- plugin
	use("wbthomason/packer.nvim") -- packer

	-- Theme
	use("EdenEast/nightfox.nvim") -- nightfox colorshceme
	use("Tsuzat/NeoSolarized.nvim") -- beutiful solarized theme
	use({ "kartikp10/noctis.nvim", requires = { "rktjmp/lush.nvim" } }) -- noctis for nvim
	use("Mofiqul/dracula.nvim")
	use("rebelot/kanagawa.nvim")
	use("NTBBloodbath/doom-one.nvim")
	use("navarasu/onedark.nvim")
	use("Shatur/neovim-ayu")
	use("sainnhe/gruvbox-material")
	use("luisiacc/gruvbox-baby")
	use("audibleblink/hackthebox.vim")
	-- colorpicker and highlighter
	use("NvChad/nvim-colorizer.lua")
	use("lervag/vimtex")
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- indent guide
	-- use("lukas-reineke/indent-blankline.nvim")

	-- integrated terminal
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- transparent bg
	use("xiyaowong/nvim-transparent")

	-- lua function that many plugins use
	use("nvim-lua/plenary.nvim")

	-- Tmux split and navigation
	use("christoomey/vim-tmux-navigator") -- navigate between split window using ctrl ijkl
	-- maximize or restor current window
	use("szw/vim-maximizer")

	-- essential plugins
	use("tpope/vim-surround") --
	use("vim-scripts/ReplaceWithRegister")

	-- comment line nvim with gcc gc9j gc9<motion>
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vscode like folder icon
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- tabline
	-- use("johann2357/nvim-smartbufs")
	-- use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
	-- use({ "romgrk/barbar.nvim", wants = "nvim-web-devicons" })
	use({
		"kdheepak/tabline.nvim",
		requires = { { "hoob3rt/lualine.nvim", opt = true }, { "kyazdani42/nvim-web-devicons", opt = true } },
	})
	-- Bufferline ---------------
	use("akinsho/bufferline.nvim")

	-- winbar
	-- use({
	-- 	"utilyre/barbecue.nvim",
	-- 	requires = {
	-- 		"neovim/nvim-lspconfig",
	-- 		"smiteshp/nvim-navic",
	-- 	},
	-- })

	-- smooth scrolling
	use("karb94/neoscroll.nvim")

	-- telescope fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" })

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- LSP Stuff
	-- Managing and installing LSP servers
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	-- configureing LSP servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- Formating and Linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	if packer_bootstrap then
		require("packer").sync()
	end
end)
