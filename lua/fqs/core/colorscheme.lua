-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, kanagawa = pcall(vim.cmd, "colorscheme catppuccin-frappe")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
--
-- Lua
-- require("onedark").setup({
-- 	-- Main options --
-- 	style = "cool", -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
-- 	transparent = true, -- Show/hide background
-- 	term_colors = true, -- Change terminal color as per the selected theme style
-- 	ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
-- 	cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
-- 	-- toggle theme style ---
-- 	toggle_style_key = "<C-k><C-t>", -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
-- 	toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
--
-- 	-- Change code style ---
-- 	-- Options are italic, bold, underline, none
-- 	-- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
-- 	code_style = {
-- 		comments = "italic",
-- 		keywords = "none",
-- 		functions = "italic",
-- 		strings = "none",
-- 		variables = "none",
-- 	},
--
-- 	-- Lualine options --
-- 	lualine = {
-- 		transparent = false, -- lualine center bar transparency
-- 	},
--
-- 	-- Custom Highlights --
-- 	colors = {}, -- Override default colors
-- 	highlights = {}, -- Override highlight groups
--
-- 	-- Plugins Config --
-- 	diagnostics = {
-- 		darker = true, -- darker colors for diagnostic
-- 		undercurl = true, -- use undercurl instead of underline for diagnostics
-- 		background = true, -- use background color for virtual text
-- 	},
-- })
--
-- require("onedark").load()

-- local status, NeoSolarized = pcall(require, "NeoSolarized")
-- if not status then
--     print("Colorscheme not found brother !")
--     return
-- end
--
-- NeoSolarized.setup {
--   style = "dark", -- "dark" or "light"
--   transparent = true, -- true/false; Enable this to disable setting the background color
--   terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--   enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
--   styles = {
--     -- Style to be applied to different syntax groups
--     comments = { italic = true },
--     keywords = { italic = false },
--     functions = { bold = true },
--     variables = {},
--     string = { italic = false },
--     underline = true, -- true/false; for global underline
--     undercurl = true, -- true/false; for global undercurl
--   },
--   -- Add specific hightlight groups
--   on_highlights = function(highlights, colors)
--     -- highlights.Include.fg = colors.red -- Using `red` foreground for Includes
--   end,
-- }
-- -- Set colorscheme to NeoSolarized
-- vim.cmd [[
--    try
--         colorscheme NeoSolarized
--     catch /^Vim\%((\a\+)\)\=:E18o
--         colorscheme default
--         set background=dark
--     endtry
-- ]]
