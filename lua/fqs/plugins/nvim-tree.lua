local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- change the collor of folder arrow
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF]])

-- recomended setting from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
	-- edit visual
	-- renderer = {
	--     icons = {
	--         glyphs = {
	--             folder = {
	--                 arrow_closed = "",
	--                 arrow_open = "",
	--             },
	--         },
	--     },
	-- },

	renderer = {
		icons = {
			show = {
				git = true,
				folder = true,
				file = true,
				folder_arrow = true,
			},
			glyphs = {
				default = "",
				git = {
					unstaged = "",
					staged = "",
					unmerged = "",
					renamed = "",
					untracked = "",
					deleted = "",
				},
			},
		},
	},
	hijack_netrw = false,
	diagnostics = {
		enable = true,
		show_on_dirs = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = false,
		custom = { ".DS_Store", "fugitive:", ".git" },
		exclude = {},
	},
})
