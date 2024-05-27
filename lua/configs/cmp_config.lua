local opts = require "nvchad.configs.cmp"
local cmp = require "cmp"

opts.mapping["<C-o>"] = cmp.mapping.complete()
table.insert(opts.sources, { name = "crates" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sql", "mysql", "plsql" },
  callback = function()
    cmp.setup.buffer {
      sources = {
        { name = "vim-dadbod-completion" },
        { name = "luasnip" },
      },
    }
  end,
})
dofile(vim.g.base46_cache .. "cmp")
opts.sources = {
  { name = "nvim_lsp", group_index = 2 },
  { name = "copilot", group_index = 2, priority = 2 },
  { name = "luasnip", group_index = 2 },
  { name = "buffer", group_index = 2 },
  { name = "nvim_lua", group_index = 2 },
  { name = "path", group_index = 2 },
  { name = "nvim_lsp_signature_help", group_index = 1 },
}

return opts
