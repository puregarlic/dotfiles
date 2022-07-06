local M = {}

M.treesitter = {
   ensure_installed = {
      "vim",
      "html",
      "css",
      "json",
      "lua",
      "elixir",
      "graphql",
      "dockerfile",
      "tsx",
      "typescript",
      "yaml",
   },
}

M.cmp = {
   sources = {
      { name = "copilot" },
      { name = "luasnip" },
      { name = "nvim_lsp" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },

   renderer = {
      highlight_git = true,
      icons = {
         show = {
            git = true,
            folder_arrow = false,
         },
      },
   },
}

return M
