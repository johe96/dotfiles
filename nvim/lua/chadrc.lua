-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  --theme = "falcon",
  theme = "falcon",
  transparency = true,
  theme_transparency = 0.90,
  statusline = {
    theme = "vscode_colored",
  }
	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
