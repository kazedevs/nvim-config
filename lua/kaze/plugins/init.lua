return {
	"nvim-lua/plenary.nvim",
	"christoomey/vim-tmux-navigator",

	-- Mason for managing LSP servers
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},

	-- Mason-LSPConfig (no config block here — it's handled in lspconfig.lua)
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
	},

	-- LSPConfig (your lspconfig.lua already handles the config)
	{
		"neovim/nvim-lspconfig",
	},
}
