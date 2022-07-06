local M = {}

M.custom = {
   n = {
      ["s"] = {
         function()
            require("hop").hint_words()
         end,
         "Hop to any word",
      },
      ["S"] = {
         function()
            require("hop").hint_char2()
         end,
         "Hop to any bigram",
      },
   },
   v = {
      ["<leader>cn"] = {
         function()
            require("carbon-now").create_snippet()
         end,
         "Create a Carbon snippet of the selection",
      },
   },
   -- V = {
   --    ["<leader>cn"] = {
   --       function()
   --          require("carbon-now").create_snippet()
   --       end,
   --       "Create a Carbon snippet of the selected lines",
   --    },
   -- },
}

return M
