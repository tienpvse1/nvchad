require "nvchad.mappings"
local cmp = require "cmp"

-- add yours here

local map = vim.keymap.set

-- normal mode

map({ "n", "i" }, "<C-Z>", "<C-O>u")
map({ "n", "i" }, "<S-A-o>", "<ESC><cmd>OrganizeImports<CR>")

map("n", "<C-/>", function()
  require("Comment.api").toggle.linewise.current()
end)

map({ "n", "t" }, "<A-i>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm", size = 0.8 }
end, { desc = "Terminal Toggle Floating term" })

map("n", "<leader><leader>m", function()
  require("treesj").toggle()
end)
map("n", "<leader>db", "<cmd>DBUIToggle<CR>")
map("n", "<leader>fm", function()
  require("conform").format()
end)
-- insert mode
map("i", "<C-o>", function()
  cmp.mapping.complete()
end)

-- visual mode
map("v", "<C-/>", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- terminal mode

-- command mode

-- special config for neovide
map("n", "<C-s>", ":w<CR>") -- Save
map("v", "<C-c>", '"+y') -- Copy
map("n", "<C-v>", '"+P') -- Paste normal mode
map("v", "<C-v>", '"+P') -- Paste visual mode
map("c", "<C-v>", "<C-R>+") -- Paste command mode
map("c", "<C-S-v>", "<C-R>+") -- Paste command mode
map("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
map("t", "<C-S-v>", '<C-\\><C-n>"*pa') -- Paste command mode

vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })
