-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onedark",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  cmp = {
    style = "atom",
  },
  term = {
    float = {
      relative = "editor",
      row = 0.05,
      height = 0.8,
      col = 0.1,
      width = 0.8,
      border = "single",
    },
  },
}

return M
