local present, null_ls = pcall(require, "null-ls")

if not present then
   return
end

local b = null_ls.builtins
local sources = {
   -- JavaScript/TypeScript
   b.code_actions.eslint_d,
   b.diagnostics.eslint_d,
   b.diagnostics.tsc,
   b.formatting.prettier_d_slim,
   b.formatting.deno_fmt,
   b.formatting.rustywind,

   -- Elixir
   b.diagnostics.credo,

   -- Docker
   b.diagnostics.hadolint,

   -- Lua
   b.formatting.stylua,
   b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

   -- Fennel
   b.formatting.fnlfmt,
}

local lsp_formatting = function(bufnr)
   vim.lsp.buf.format {
      filter = function(client)
         return client.name == "null-ls"
      end,
      bufnr = bufnr,
   }
end
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local M = {}

M.setup = function()
   null_ls.setup {
      sources = sources,

      -- Format on save
      -- on_attach = function (client)
      --   if client.resolved_capabilities.document_formatting then
      --     vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
      --   end
      -- end
      on_attach = function(client, bufnr)
         if client.supports_method "textDocument/formatting" then
            vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
            vim.api.nvim_create_autocmd("BufWritePre", {
               group = augroup,
               buffer = bufnr,
               callback = function()
                  lsp_formatting(bufnr)
               end,
            })
         end
      end,
   }
end

return M
