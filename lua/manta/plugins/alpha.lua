return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                      ",
			"    ⡐⢀⠂⠄⠡⠐⡈⢀⠂⠌⠨⠐⡈⠄⠂⡐⢈⠐⡀⢂⠂⡁⠅⡀⠄⠡⢈⠐⠠⢈⠠⠁⠄⠂⠌⠄⠡⠐⡀⢂⠁⡂⠡⠈⠄⡀    ",
			"   ⢐⠐⢐⢈⠨⠈⠄⠂⠠⠈⠄⠅⢂⢐⠀⡂⡐⢐⠐⢐⠐⡀⢂⠂⠀⡐⠈⠄⠌⠨⠀⠄⠡⠨⠈⠄⠡⢈⢐⢀⠂⡂⡐⠈⠄⡁⠠    ",
			"  ⠀⡂⠨⠀⠄⢂⠡⢈⠀⠅⠡⢈⢐⠐⠠⠐⡀⢂⠐⡈⠄⢂⠐⠠⢂⠀⠄⠌⠄⠡⠈⠌⠠⠡⠨⠠⠁⠅⡀⠂⠄⢂⠐⠠⢈⠐⢐⠀    ",
			"  ⡐⠠⢁⠡⠈⠄⠂⠄⠠⠡⠈⠄⢂⠨⠀⢂⠐⡐⠐⠠⠈⠄⠌⡐⢸⠀⢀⢂⠡⠈⠌⡐⢈⠐⡈⠄⡁⢂⠂⠡⠈⠄⠌⠨⢀⠨⠀⡂⠀   ",
			" ⠀⢂⠡⠐⠠⠁⠅⠨⠀⠌⠄⡁⢊⢀⠂⡈⠄⠂⠄⠡⠁⠅⠨⠀⠄⣿⠀⠄⠂⠄⠡⠁⠄⢐⠐⡀⢂⠂⠂⠄⠁⠅⠨⠠⢁⠂⠠⢁⠐⡀   ",
			" ⠨⠀⡂⠡⠨⠐⠀⠅⠠⠁⡂⡐⢐⠀⡂⠐⡈⠨⠈⠄⠅⠌⠨⠀⢬⣿⠂⢈⠄⠡⠁⠌⡈⢀⢂⢐⠠⠨⠈⠄⠁⠅⠡⠈⠄⠨⠐⠐⢐⠀   ",
			" ⢂⠡⠐⡈⢐⠈⠠⠁⡐⠁⠄⢂⠐⡐⠀⡐⠠⠁⠌⠄⠡⢈⠐⠀⣺⣿⠂⡐⠈⠄⠡⠁⠄⠐⢀⢐⠠⠁⠌⡀⠅⠨⠠⠁⠅⡁⠂⡁⠂⠌⠀  ",
			"⠀⡂⠄⠡⠐⡀⠂⠨⠀⠄⠅⠌⡐⠐⢐⠀⠄⠡⠨⠠⠁⠅⢂⠀⠁⣿⣿⠀⢂⠁⠅⡁⠅⢨⢈⠠⠐⡀⠅⠂⠄⠨⠠⠡⠨⠐⡀⠁⠄⡁⠊⠄  ",
			"⢀⠂⠌⠠⢁⠄⠂⠡⠀⠅⢂⠡⠀⠅⠂⠀⠌⠠⢁⠂⡁⠌⡀⠄⢁⣟⣻⠁⠐⠈⠄⢂⠈⢸⡀⠄⠡⠐⡈⠨⠀⠅⠨⠐⠠⠁⠄⡁⢐⠠⢁⠂  ",
			"⠠⠈⠄⠅⢂⠠⠈⠄⠠⢁⠂⠄⠡⠨⠈⠀⠌⢐⢀⢂⠐⡐⠀⡇⢸⣿⣿⠄⠂⡁⠄⡀⢁⢸⡂⠠⢁⠂⠄⠡⠀⠅⠌⠨⠠⠁⠅⠀⡂⡐⢐⠈⠀ ",
			"⠠⠁⠅⠨⠀⡀⠌⠀⢐⠠⠈⠄⠅⠌⡐⠀⠌⠠⠀⠂⠐⠐⢨⠇⢸⡛⠻⡁⠐⢐⠐⢐⠀⣺⡇⠐⠠⠈⠌⡈⠀⠅⠨⠠⠁⠌⡈⠀⠄⢂⠐⡈⠀ ",
			"⠀⠅⠌⠄⢁⠀⠌⠀⡐⠠⠁⠅⢂⠡⠀⠠⠈⠄⡁⠂⠂⠀⣠⠀⠈⠈⠑⠂⠀⠂⡈⠄⠂⣽⣇⠠⠁⠅⢂⠐⠀⡂⡐⢈⠈⡐⠐⠈⡈⠄⠂⠌⡀ ",
			"⠠⢁⠂⠡⠀⢐⠀⠀⠄⠡⠨⠐⡀⢂⠁⢀⠡⠐⠠⠁⠅⠁⣶⡅⢬⣤⣯⣇⠄⠡⠐⡈⠀⣿⣗⠀⠌⠐⠐⢈⠀⡐⡀⢂⠂⠄⠡⠐⠠⠨⠠⠁⠄ ",
			"⠐⠠⠨⠀⡁⢀⠂⠀⠡⠁⠌⡐⠀⢂⠂⢐⠠⠈⠄⠅⠌⢐⣿⡇⢸⣿⣿⣿⢸⠀⡡⠠⠁⣾⣿⠀⠀⢀⠁⠀⠀⠀⠂⢐⢈⠨⠀⠠⠡⠈⠄⢅⢁ ",
			"⠈⠌⠠⠁⠀⠄⠀⠀⠡⠨⠐⠐⠈⡀⠂⢸⢀⠨⠠⠁⠌⢸⣿⣇⢺⣿⣿⣿⣮⣧⠐⠐⡀⢺⢿⡂⠨⡀⠄⠂⢀⠂⠨⠀⠄⢂⠠⠁⡂⠅⡊⠔⢐ ",
			"⠈⠄⠅⠂⠈⠀⠀⠀⡁⢂⠁⠅⠁⡀⠅⢸⡆⠐⠈⠄⠅⢸⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣾⡎⣢⢻⣆⣧⡈⡈⢀⠀⠡⠈⠌⡀⢐⢁⢂⢑⠌⠊  ",
			"⢈⢐⠠⠀⠂⠀⠀⡄⠂⡂⠌⠄⡁⠀⡂⢕⣷⢀⢡⢨⣀⣺⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣺⣱⣿⣿⣷⡆⠀⡀⠌⠨⠐⠀⣘⠠⠐⠐⢈⠀  ",
			"⠠⠐⠀⠀⠀⢀⣼⠂⢂⠐⠠⠁⠄⠂⡀⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣛⣥⠂⣼⣿⣿⣿⡟⠠⠁⠠⠀⠅⠌⡀⡆⠄⠡⠁⠀   ",
			"⠠⠁⠀⠀⢀⣾⣿⠅⠂⠌⠨⠐⡀⠄⠂⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣋⣵⣶⣿⠿⣋⣼⣿⠿⠻⢋⠀⡐⠀⠅⠂⠄⠁⡀⡇⠨⢀⠂    ",
			"⠀   ⣸⣿⣿⡇⠈⠄⠅⠂⠄⠀⠨⢠⡙⢿⣿⣿⣿⣿⣿⣿⠟⣩⣾⣿⡿⠋⡅⢗⣛⣭⣾⠏⣱⣏⠀⡐⠀⠅⡡⠡⡡⢨⠃⣠⣅     ",
			"  ⢀⢱⣿⣿⣿⡇⠨⠀⠅⡁⢂⠀⠡⠸⣿⣦⡙⢿⣿⠿⣋⣴⣿⡿⢟⣡⣴⣧⡙⣌⠟⣋⣄⡿⢿⠇⢀⢂⠈⡐⡈⠌⠌⢔⣺⣮⣭⣝    ",
			"  ⣥⣿⣿⣿⣿⣇⠅⠂⢁⢐⠀⢨⠐⢈⣿⣿⣿⢂⣶⣿⣿⣫⣵⣾⣿⡿⢟⣩⢒⡘⣌⢿⣫⣺⢟⠅⢀⠐⠀⡂⠄⠡⢘⢸⡸⣺⣻⡿⣿⣦  ",
			"⣵⣿⣿⣿⣿⣿⣿⣷⠡⢁⠐⠠⠈⢰⠀⠂⣿⣿⢇⣾⣯⣾⣿⢿⡿⠛⡱⡼⡿⠶⣿⣷⡘⣆⢿⣿⢚⡅⡠⢨⠠⠢⡊⠔⢈⢰⢭⡯⣾⢪⣿⣿⡄ ",
			"⣿⣿⣿⣿⣿⣿⣿⣿⡘⠠⠀⠅⡁⠨⡇⠀⣿⢋⣾⣿⣿⣿⣧⣷⣿⣷⣷⣿⣾⣿⣌⢻⣿⣄⡦⣿⡇⠇⡘⠨⢈⠪⢐⠠⠀⢰⣹⢵⡏⣾⣿⣿⣇ ",
			"⣮⣍⣛⠛⠻⠻⠿⢿⡎⡂⡁⢐⠠⠈⣷⠀⠇⣾⣿⣿⣿⣿⣿⣿⣿⣯⣭⣵⣵⣙⠿⣧⡝⣽⣿⣿⢽⡀⠜⠈⠀⡐⠠⢐⠀⢜⢞⣾⢸⣟⣾⣿⣷ ",
			"⣿⣿⣿⣿⣿⣿⣶⣦⣄⠅⠄⢐⠠⠐⣿⢂⣾⣿⣿⣿⣿⣿⣿⣿⣿⣟⠝⣙⡻⠿⡿⣮⠽⡈⡻⣻⢵⠂⡘⢈⠀⠄⠡⢸⠀⢸⣹⢇⡿⣼⢿⣿⣿ ",
			"⡙⣿⣿⣿⣿⣿⣿⣿⣿⡕⡈⢀⠐⠀⢏⣼⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⣾⣿⡿⢡⣻⢚⣦⣧⣲⣸⢵⢁⠐⠠⠀⠌⡐⣸⠀⢺⢅⣿⢵⢯⣿⣿⣿⠀",
			"                                                      ",
			"                    N e o v i m                       ",

			-- " ╔═════════════════════════━━━━━━━━━━━━━━━━━━━━━━━━━┓",
			-- " ║                                                  ┃",
			-- " ║  ███╗   ███╗ █████╗ ███╗   ██╗████████╗ █████╗   ┃",
			-- " ║  ████╗ ████║██╔══██╗████╗  ██║╚══██╔══╝██╔══██╗  ┃",
			-- " ║  ██╔████╔██║███████║██╔██╗ ██║   ██║   ███████║  ┃",
			-- " ┃  ██║╚██╔╝██║██╔══██║██║╚██╗██║   ██║   ██╔══██║  ║",
			-- " ┃  ██║ ╚═╝ ██║██║  ██║██║ ╚████║   ██║   ██║  ██║  ║",
			-- " ┃  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝  ║",
			-- " ┗━━━━━━━━━━━━━━━━━━━━━━━═══════════════════════════╝",
			-- "                                                     ",
		}
		local lazy_stats = require("lazy").stats()

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.footer.opts.hl = "AlphaFooter"

		dashboard.section.buttons.val = {
			-- dashboard.button("n", "  New File", "<cmd>ene<CR>"),
			dashboard.button("y", "󰇥  Yazi", "<cmd>Yazi<CR>"),
			dashboard.button("f", "  FZF ", "<cmd>FzfLua files<CR>"),
			dashboard.button("q", "󰈆  Exit", "<cmd>qa<CR>"),
		}
		vim.cmd("hi AlphaShortcut guifg=text")
		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		vim.cmd("hi AlphaHeader guifg=#b4befe")
		vim.cmd("hi AlphaFooter guifg=#b4befe")
		vim.cmd("hi AlphaButtons guifg=#babbf1")

		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"

		dashboard.section.footer.val = {
			" ",
			"      Some Text here",
			" Plugins loaded: " .. lazy_stats.loaded .. " / " .. lazy_stats.count,
		}
		-- dashboard.opts.layout[1].val = 3
		pcall(vim.cmd.AlphaRedraw)

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

		vim.api.nvim_create_autocmd("User", {
			pattern = "AlphaReady",
			desc = "hide cursor for alpha",
			callback = function()
				local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
				hl.blend = 100
				vim.api.nvim_set_hl(0, "Cursor", hl)
				vim.opt.guicursor:append("a:Cursor/lCursor")
			end,
		})
		vim.api.nvim_create_autocmd("BufUnload", {
			buffer = 0,
			desc = "show cursor after alpha",
			callback = function()
				local hl = vim.api.nvim_get_hl_by_name("Cursor", true)
				hl.blend = 0
				vim.api.nvim_set_hl(0, "Cursor", hl)
				vim.opt.guicursor:remove("a:Cursor/lCursor")
			end,
		})
	end,
}
