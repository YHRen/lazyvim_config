return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  lazy = false,
  opts = {
    ensured_installed = {
      "python",
      "bash",
      "rust",
      "lua",
      "latex",
      "yaml",
      "toml",
      "cpp",
      "markdown",
      "markdown_inline",
    },
  },
}
