local M = {}
M.config = function()
  local dapui = require "dapui"
  dapui.setup()
  require "configs.dap.go"
  require "configs.dap.node"
  require "configs.dap.ui"
  require "configs.dap.mappings"
end

M.dependencies = {
  "rcarriga/nvim-dap-ui",
  "leoluz/nvim-dap-go",
  "nvim-neotest/nvim-nio",
  "mxsdev/nvim-dap-vscode-js",
}

return M
