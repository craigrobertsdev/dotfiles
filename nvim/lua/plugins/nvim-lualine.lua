return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			sections = {
				lualine_z = {
					{
						'datetime',
						style = '%H:%M'
					}
				}
			}
		})
	end
}
