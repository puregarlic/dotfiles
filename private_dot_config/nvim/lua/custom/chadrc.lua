-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local override = require "custom.plugins.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "aquarium",
}

M.plugins = {
   override = {
      ["hrsh7th/nvim-cmp"] = override.cmp,
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
   },
   user = require "custom.plugins",
}

M.mappings = require "custom.mappings"

return M
