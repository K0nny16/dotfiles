local keymap = vim.keymap.set

--Keybinds
vim.keymap.set("v", "<Tab>",  ">gv", {})
vim.keymap.set("v", "<S-Tab>",  "<gv", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "_d",vim.diagnostic.goto_next, {})
vim.keymap.set("n", "_D",vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {})

--Save and quit
keymap("n","<C-s>",":w<CR>", {})
keymap("n","<C-w>",":wq<CR>",{})
keymap("n","<C-q>",":q!<CR>",{})

--Options
vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.hlsearch = true
