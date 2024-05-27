local M = {}

M.config = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "tailwindcss-language-server",
    "svelte-language-server",
    "json-lsp",
    "js-debug-adapter",

    -- golang
    "gopls",
    "gotests",
    "goimports",
    "gomodifytags",
  },
}

return M
