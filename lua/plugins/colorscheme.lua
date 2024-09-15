return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local transparent = true

		require("tokyonight").setup({
			style = "night",
			transparent = transparent,
			styles = {
				sidebars = transparent and "transparent" or "dark",
				floats = transparent and "transparent" or "dark",
			},
			on_colors = function(colors)
				colors.bg_dark = transparent and colors.none or colors.bg_dark
				colors.bg_float = transparent and colors.none or colors.bg_dark
				colors.bg_sidebar = transparent and colors.none or colors.bg_dark
				colors.bg_statusline = transparent and colors.none or colors.bg_dark
			end,
			on_highlights = function(hl, c)
				local prompt = c.bd_dark
				hl.TelescopeNormal = {
					bg = c.none,
					fg = c.fg_dark,
				}
				hl.TelescopeBorder = {
					bg = c.none,
					fg = c.none,
				}
				hl.TelescopePromptNormal = {
					bg = prompt,
				}
				hl.TelescopePromptBorder = {
					bg = prompt,
					fg = prompt,
				}
				hl.TelescopePromptTitle = {
					bg = prompt,
					fg = prompt,
				}
				hl.TelescopePreviewTitle = {
					bg = c.bg_dark,
					fg = c.bg_dark,
				}
				hl.TelescopeResultsTitle = {
					bg = c.bg_dark,
					fg = c.bg_dark,
				}
			end,
		})

		vim.cmd("colorscheme tokyonight-night")
	end,
}
