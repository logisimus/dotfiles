return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  config = function()
    require("telescope").setup {
      defaults = {
        selection_caret = " ",
        entry_prefix = " ",
        sorting_strategy = "ascending",
        layout_config = {
          horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
          },
          width = 0.7,
          height = 0.7,
        },
      },
    }
  end,
}
