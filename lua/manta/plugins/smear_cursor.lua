return {
	"sphamba/smear-cursor.nvim",
	opts = { -- Default  Range
		time_iterval = 7,
		stiffness = 0.8, -- 0.6      [0, 1]
		transparent_bg_fallback_color = "#303030",
		trailing_stiffness = 0.5, -- 0.4      [0, 1]
		stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
		trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
		damping = 0.8, -- 0.65     [0, 1]
		damping_insert_mode = 0.8, -- 0.7      [0, 1]
		distance_stop_animating = 0.5, -- 0.1      > 0
	},
	-- opts = {
	-- 	stiffness = 0.5,
	-- 	trailing_stiffness = 0.5,
	-- 	damping = 0.67,
	-- 	matrix_pixel_threshold = 0.5,
	-- },
	config = function()
		require("smear_cursor").setup({
			-- alpha = { enabled = false },
			-- filetype_exclude = { "alpha" },
		})
	end,
}
