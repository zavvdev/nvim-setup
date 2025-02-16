return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "tsserver",
          "clojure_lsp",
          "phpactor",
          "html",
          "cssls",
          "rust_analyzer",
          "tailwindcss",
          "clangd",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      lspconfig.clojure_lsp.setup({
        capabilities = capabilities,
      })

      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.phpactor.setup({
        capabilities = capabilities,
      })

      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })

      lspconfig.csharp_ls.setup({
        capabilities = capabilities,
      })

      -- if you're getting "multiple different client offset_encodings detected" error
      -- then go to ~/.local/share/nvim/lazy/nvim-lspconfig/lua/lspconfig/server_configuration/clangd.lua
      -- and search for:
      -- local default_capabilities = {
      -- textDocument = {
      --     completion = {
      --       editsNearCursor = true,
      --     },
      --   },
      --   offsetEncoding = { 'utf-8', 'utf-16' }
      -- }
      --
      -- and change offsetEncoding = { 'utf-8', 'utf-16' } to offsetEncoding = 'utf-8',
      -- if you have buffer with utf-8

      lspconfig.clangd.setup({
        capabilities = capabilities,
      })

      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        filetypes = { "rust" },
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              allFeatures = true,
            },
          },
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
