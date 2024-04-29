local options = {
  lsp_fallback = true,
  formatters_by_ft = {
    lua = { "stylua" },

    javascript = { "prettier" },
    typescript = { "prettier" },
    json = { "prettier" },
    typescriptreact = { "prettier" },
    javascriptreact = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    svelte = { "prettier" },
    sql = { "sql_formatter" },

    sh = { "shfmt" },
    go = { "gofmt" },
    rust = { "rust_fmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
