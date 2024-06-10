vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

local plugins = {
	{"ellisonleao/gruvbox.nvim",priority = 1000},
	{'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = {'nvim-lua/plenary.nvim'}
	},
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

}
local opts = {}

require("lazy").setup(plugins,opts)
require("gruvbox").setup()
local builtin = require("telescope.builtin")
local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "rust", "java", "html" },
	highlight = { enable = true },
	indent = {enable = true},
})

--Theme
vim.cmd.colorscheme "gruvbox"

--Keybinds
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>ff',builtin.find_files, {})
