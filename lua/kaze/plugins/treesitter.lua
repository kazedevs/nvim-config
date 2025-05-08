
return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        -- Web & Markup
        "html", "css", "javascript", "typescript", "tsx", "svelte",
        "json", "yaml", "graphql", "prisma", "markdown", "markdown_inline",

        -- Shell & Config
        "bash", "dockerfile", "gitignore",

        -- Neovim & Lua
        "lua", "vim", "vimdoc", "query",

        -- System languages
        "c", "cpp", "rust", "go",

        -- High-level languages
        "python", "java", "php", "ruby",

        -- Optional extras
        "toml", "regex", "make"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
