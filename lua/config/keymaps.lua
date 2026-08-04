vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "save file" })

-- Exit
map("n", "<leader>q", "<cmd>q<CR>", { desc = "exit the archive" })
