return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {
        ui = {
          icons = {
            package_pending = " ",
            package_installed = " ",
            package_uninstalled = " ",
          },
        },
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "pyright", "html", "cssls", "ts_ls", "clangd" },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      require("lspconfig").pyright.setup {
        capabilities = capabilities,
      }
      require("lspconfig").html.setup {
        capabilities = capabilities,
      }
      require("lspconfig").cssls.setup {
        capabilities = capabilities,
      }
      require("lspconfig").ts_ls.setup {
        capabilities = capabilities,
      }
      require("lspconfig").clangd.setup {
        capabilities = capabilities,
      }
    end,
  }
}
