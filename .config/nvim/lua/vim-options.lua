
--Keybinds
vim.keymap.set("v", "<Tab>",  ">gv", {})
vim.keymap.set("v", "<S-Tab>",  "<gv", {})
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "_d",vim.diagnostic.goto_next, {})
vim.keymap.set("n", "_D",vim.diagnostic.goto_prev, {})
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {})
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

--Options
vim.g.mapleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.bo.softtabstop = 4
vim.opt.hlsearch = true
