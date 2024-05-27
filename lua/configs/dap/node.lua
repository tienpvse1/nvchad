local dap = require "dap"
dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}", --let both ports be the same for now...
  executable = {
    command = "node",
    -- -- 💀 Make sure to update this path to point to your installation
    args = {
      vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
      "${port}",
    },
    -- command = "js-debug-adapter",
    -- args = { "${port}" },
  },
}

for _, language in ipairs { "typescript", "javascript" } do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch Current File (Typescript)",
      cwd = "${workspaceFolder}",
      runtimeArgs = { "run", "debug" },
      program = "${file}",
      runtimeExecutable = "npm",
      sourceMaps = true,
      protocol = "inspector",
      outFiles = { "${workspaceFolder}/**/**/*", "!**/node_modules/**" },
      skipFiles = { "<node_internals>/**", "node_modules/**" },
      resolveSourceMapLocations = {
        "${workspaceFolder}/**",
        "!**/node_modules/**",
      },
    },
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch NestJS app",
      cwd = "${workspaceFolder}",
      runtimeArgs = { "run", "start:debug" },
      program = "${file}",
      runtimeExecutable = "npm",
      sourceMaps = true,
      protocol = "inspector",
      outFiles = { "${workspaceFolder}/**/**/*", "!**/node_modules/**" },
      skipFiles = { "<node_internals>/**", "node_modules/**" },
      resolveSourceMapLocations = {
        "${workspaceFolder}/**",
        "!**/node_modules/**",
      },
    },
  }
end
