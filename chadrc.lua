---@type ChadrcConfig 
local M = {}
local opt = vim.opt

M.mappings = require "custom.mappings"

M.ui = {theme = 'github_light', theme_toggle = { "github_light", "github_light_light" }}
M.plugins = "custom.plugins"

-- M.options = {
--   opt = {
--     tabstop = 4,
--     softtabstop = 0,
--     shiftwidth = 0,
--   }
-- }

-- Indenting
opt.shiftwidth = 0
opt.tabstop = 4
opt.softtabstop = 0

opt.relativenumber = true

return M
