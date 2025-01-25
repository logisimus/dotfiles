return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    require("bufferline").setup {
      options = {
        numbers = "yes",
        show_buffer_close_icons = false,
        separator_style = "slant",
      },
    }
  end,
}
