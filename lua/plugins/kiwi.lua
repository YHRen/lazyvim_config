return {
  "serenevoid/kiwi.nvim",
  opts = {
    {
      name = "work",
      path = vim.fn.expand("$HOME/.sync/kiwi/work-wiki"),
    },
  },
  keys = {
    { "<leader>kk", ':lua require("kiwi").open_wiki_index()<cr>', desc = "Open Wiki index" },
    { "<leader>kx", ':lua require("kiwi").todo.toggle()<cr>', desc = "Toggle Markdown Task" },
  },
  lazy = true,
}
