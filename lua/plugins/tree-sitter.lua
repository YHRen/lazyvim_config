require("lazy").setup({
  { "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
})

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  opts = {
    ensured_installed = {
      "markdown",
      "markdown_inline",
    },
  },
}
