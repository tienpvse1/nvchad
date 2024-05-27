local dapui = require "dapui"
local M = {}
M = {
  config = function()
    dapui.setup()
    require "configs.dap.go"
    require "configs.dap.node"
    require "configs.dap.ui"
    require "configs.dap.mappings"
  end,

  dependencies = {

    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "nvim-neotest/nvim-nio",
    "mxsdev/nvim-dap-vscode-js",
  },
}

return M
