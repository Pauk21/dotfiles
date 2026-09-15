local map = vim.keymap.set

-- Window navigation
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to top window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to down window" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Read config
map("n", "<leader>sr", "<cmd>source ~/.config/nvim/init.lua<cr>", { desc = "Reload init.lua" })

-- Quit all
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit all" })

-- Quit and save all
map("n", "<leader>wq", "<cmd>wqa<cr>", { desc = "Save all and quit all" })

-- Save file
map("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save file" })
