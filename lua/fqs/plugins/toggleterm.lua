local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	print("Neoscroll missing !")
	return
end

toggleterm.setup({
	size = 10,
	shell = "pwsh",
	open_mapping = [[<A-i>]],
	shading_factor = 2,
	direction = "float",
	float_opts = {
		border = "single",
		highlights = {
			border = require("fqs.core.utils").get_border_chars("single"),
			background = "Normal",
		},
	},
})
