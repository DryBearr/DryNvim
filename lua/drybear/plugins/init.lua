local plugins = {
	unpack(require("drybear.plugins.colorscheme")),
	unpack(require("drybear.plugins.treesitter")),
	unpack(require("drybear.plugins.lsp")),
	unpack(require("drybear.plugins.lualine")),
	unpack(require("drybear.plugins.formatter")),
	unpack(require("drybear.plugins.nvim-tree")),
	unpack(require("drybear.plugins.which-key")),
	unpack(require("drybear.plugins.trouble")),
	unpack(require("drybear.plugins.comments")),
	unpack(require("drybear.plugins.todo-comments")),
	unpack(require("drybear.plugins.telescope")),
	unpack(require("drybear.plugins.nvim-cmp")),
	unpack(require("drybear.plugins.surround")),
	unpack(require("drybear.plugins.gitsigns")),
	unpack(require("drybear.plugins.dressing")),
	unpack(require("drybear.plugins.bufferline")),
	unpack(require("drybear.plugins.pairs")),
	unpack(require("drybear.plugins.alpha")),
	unpack(require("drybear.plugins.blank-line")),
	unpack(require("drybear.plugins.linter")),
}

require("lazy").setup(plugins)
