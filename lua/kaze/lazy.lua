local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable", -- latest stable release
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "kaze.plugins" }, { import = "kaze.plugins.lsp" } }, {  -- import plugins from a directory
  import = "kaze.plugins",
  checker = {
    enabled = true,
    notify = false,
  },
})
