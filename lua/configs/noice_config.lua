local M = {}

M.config = {
  views = {
    split = {
      enter = true,
    },
  },
  lsp = { signature = { enabled = false }, hover = { enabled = false }, message = { enabled = false } },
  notify = {
    enabled = false,
    view = "notify",
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = false, -- use a classic bottom cmdline for search
    command_palette = false, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = true, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
}

return M
