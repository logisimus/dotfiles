return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    {
      "L3MON4D3/LuaSnip",
      dependencies = "rafamadriz/friendly-snippets",

      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    {
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
  },

  config = function()
    require("cmp").setup {
      completion = { completeopt = "menu,menuone" },
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },
      formatting = {
        fields = { 'abbr', 'kind' },
      },
      window = {
        completion = {
          border = "single",
          winhighlight = require("cmp").config.window.bordered().winhighlight,
          scrollbar = false,
        },
        documentation = false,
      },
      sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'path' },
      },
    }
  end,
}
