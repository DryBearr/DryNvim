return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			"    ____             _____       __   __          ",
			"   / __ \\_______  __/ ___/__  __/ /__/ /_  ____  ",
			"  / / / / ___/ / / /\\__ \\/ / / / //_/ __ \\/ __ \\ ",
			" / /_/ / /  / /_/ /___/ / /_/ / ,< / / / / /_/ / ",
			"/_____/_/   \\__, //____/\\__,_/_/|_/_/ /_/\\____/  ",
			"           /____/                                ",
			"                                                 ",
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
			dashboard.button("SPC ee", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", "  > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<CR>"),
		}

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
