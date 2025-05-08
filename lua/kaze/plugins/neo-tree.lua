return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- already used by nvim-tree
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			window = {
				width = 35,
				mappings = {
					["<space>"] = "toggle_node",
					["l"] = "open",
					["h"] = "close_node",
					["v"] = "open_vsplit",
					["s"] = "open_split",
				},
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			event_handlers = {
				{
					event = "file_opened",
					handler = function()
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})

		-- keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
		keymap.set("n", "<leader>ef", "<cmd>Neotree reveal<CR>", { desc = "Reveal file in Neo-tree" })
	end,
}
