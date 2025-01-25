return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "vim", "vimdoc", "python", "html", "css", "javascript", "c" },
      highlight = { enable = true },
    }
  end,
}
