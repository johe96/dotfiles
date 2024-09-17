local M = {}

M.base_30 = {
    white = "#FFFFFF",
    darker_black = "#1a1a1a",
    black = "#202020", -- background
    black2 = "#2a2a2a",
    one_bg = "#2e2e2e",
    one_bg2 = "#353535",
    one_bg3 = "#3d3d3d",
    grey = "#4c5355",
    grey_fg = "#5c6266",
    grey_fg2 = "#6f7478",
    light_grey = "#75797d",
    red = "#ff7b72",
    baby_pink = "#ffa198",
    pink = "#d2a8ff",
    line = "#2e2e2e", -- for lines like vertsplit
    green = "#7ee787",
    vibrant_green = "#56d364",
    nord_blue = "#58a6ff",
    blue = "#79c0ff",
    yellow = "#ffdf5d",
    sun = "#ffea7f",
    purple = "#d2a8ff",
    dark_purple = "#bc8cff",
    teal = "#4fd6be",
    orange = "#ffa657",
    cyan = "#56d4dd",
    statusline_bg = "#1e1e1e",
    lightbg = "#2a2a2a",
    pmenu_bg = "#7ee787",
    folder_bg = "#58a6ff",
}

M.base_16 = {
    base00 = "#202020",
    base01 = "#2a2a2a",
    base02 = "#323232",
    base03 = "#3d3d3d",
    base04 = "#4c5355",
    base05 = "#b1bac4",
    base06 = "#c9d1d9",
    base07 = "#f0f6fc",
    base08 = "#ff7b72",
    base09 = "#ffa657",
    base0A = "#ffdf5d",
    base0B = "#7ee787",
    base0C = "#56d4dd",
    base0D = "#58a6ff",
    base0E = "#d2a8ff",
    base0F = "#ff9cac",
}

M.type = "dark"

M.polish_hl = {
    Comment = { fg = M.base_30.white, italic = true },
    String = { fg = M.base_30.green },
    Constant = { fg = M.base_30.orange },
    Variable = { fg = M.base_30.blue },
    Keyword = { fg = M.base_30.orange },
    Statement = { fg = M.base_30.red },
    Type = { fg = M.base_30.cyan },
    Function = { fg = M.base_30.purple, italic = true },
    Identifier = { fg = M.base_30.blue },
    Special = { fg = M.base_30.yellow },
    Tag = { fg = M.base_30.blue },
    ["@attribute"] = { fg = M.base_30.purple, italic = true },
    ["@parameter"] = { fg = M.base_30.yellow },
}

return M
