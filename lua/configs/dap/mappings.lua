local dap = require "dap"

vim.keymap.set("n", "<leader>t", function()
  dap.toggle_breakpoint()
end)

vim.keymap.set("n", "<leader>co", function()
  dap.continue()
end)

vim.keymap.set("n", "<leader>n", function()
  dap.step_over()
end)
vim.keymap.set("n", "<leader>i", function()
  dap.step_into()
end)
