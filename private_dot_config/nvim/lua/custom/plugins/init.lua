return {
   ["goolord/alpha-nvim"] = {
      disable = false,
      config = function()
         require "custom.plugins.configs.alpha"
      end,
   },
   ["abecodes/tabout.nvim"] = {
      config = function()
         require "custom.plugins.configs.tabout"
      end,
      wants = { "nvim-treesitter" },
      after = { "nvim-cmp" },
   },
   ["ur4ltz/surround.nvim"] = {
      config = function()
         require "custom.plugins.configs.surround"
      end,
   },
   ["windwp/nvim-ts-autotag"] = {
      config = function()
         require "custom.plugins.configs.autotag"
      end,
   },
   ["phaazon/hop.nvim"] = {
      config = function()
         require "custom.plugins.configs.hop"
      end,
   },
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugins.configs.null-ls").setup()
      end,
   },
   ["tpope/vim-sleuth"] = {},
   ["j-hui/fidget.nvim"] = {
      config = function()
         require "custom.plugins.configs.fidget"
      end,
   },
   ["folke/trouble.nvim"] = {
      config = function()
         require "custom.plugins.configs.trouble"
      end,
      requires = "kyazdani42/nvim-web-devicons",
   },
   ["folke/todo-comments.nvim"] = {
      config = function()
         require "custom.plugins.configs.todos"
      end,
      requires = "nvim-lua/plenary.nvim",
   },
   ["folke/zen-mode.nvim"] = {
      config = function()
         require "custom.plugins.configs.zen-mode"
      end,
   },
   ["folke/twilight.nvim"] = {
      config = function()
         require "custom.plugins.configs.twilight"
      end,
   },

   -- Uncomment this plugin and comment the two below to set up Copilot.
   -- You'll need to run :PackerSync, then :Copilot in a new instance.
   -- See here: https://github.com/zbirenbaum/copilot.lua#preliminary-steps
   -- ["github/copilot.vim"] = {},
   ["zbirenbaum/copilot.lua"] = {
      event = "InsertEnter",
      config = function()
         vim.schedule(function()
            require("copilot").setup {}
         end)
         -- require("custom.plugins.configs.copilot").setup()
      end,
   },
   ["zbirenbaum/copilot-cmp"] = {
      module = "copilot_cmp",
   },

   ["ellisonleao/carbon-now.nvim"] = {
      config = function()
         require "custom.plugins.configs.carbon"
      end,
      event = "ModeChanged *:[vV]",
   },

   ["ray-x/lsp_signature.nvim"] = {
      config = function()
         require "custom.plugins.configs.lsp_signature"
      end,
      event = "InsertEnter",
   },
}
