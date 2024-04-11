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
return opts
