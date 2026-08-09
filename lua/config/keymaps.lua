vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Save
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })

-- Exit
map("n", "<leader>q", "<cmd>q<CR>", { desc = "Exit file" })

-------------------------------------------------------------------------------
-- Window Splits
-------------------------------------------------------------------------------
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical split" })

-- Move to the left window
map("n", "<leader>h", "<C-w>h", { desc = "Go to left window" })

-- Move to the bottom window
map("n", "<leader>j", "<C-w>j", { desc = "Go to lower window" })

-- Move to the top window
map("n", "<leader>k", "<C-w>k", { desc = "Go to upper window" })

-- Move to the right window
map("n", "<leader>l", "<C-w>l", { desc = "Go to right window" })

-------------------------------------------------------------------------------
-- Tab Management
-------------------------------------------------------------------------------
map("n", "<leader>tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })

map("n", "<leader>tg", "<cmd>tabnext<CR>", { desc = "Go to next tab" })

map("n", "<leader>tp", "<cmd>tabprevious<CR>", { desc = "Go to previous tab" })

-------------------------------------------------------------------------------
-- Neotree
-------------------------------------------------------------------------------
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-------------------------------------------------------------------------------
-- Toggleterm
-------------------------------------------------------------------------------

-- map({"n", "t"}, "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Open terminal" })
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm direction=tab<CR>", { desc = "Terminal in new tab" })















































