vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Salvar com mais facilidade
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Salvar arquivo" })