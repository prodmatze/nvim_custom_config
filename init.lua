
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
require("vim-options")
require("lazy").setup("plugins")








-- Set hybrid colorscheme options
--vim.g.hybrid_custom_term_colors = 3
--vim.g.hybrid_reduced_contrast = 1 -- Remove this line if using the default palette

-- Load the hybrid colorscheme
vim.cmd('colorscheme catppuccin-mocha')

--require("catppuccin").setup()
--vim.cmd.colorscheme "gruvbox"

