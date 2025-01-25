return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("nvim-tree").setup {
      hijack_cursor = true,
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 60,
        number = true,
        relativenumber = true,
      },
      renderer = {
        highlight_git = true,
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              open = "",
            },
          },
        },
      },
    }
  end,
}
