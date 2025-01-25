return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require('lualine').setup {
      options = {
        component_separators = "",
        section_separators = "",
      },
      sections = {
        lualine_b = {},
        lualine_c = {},
        lualine_x = { 'encoding', 'filetype' },
      },
    }
  end,
}
