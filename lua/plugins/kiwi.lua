return {
  "serenevoid/kiwi.nvim",
  opts = {
    {
      name = "work",
      path = ".note/work-wiki",
    },
    {
      name = "personal",
      path = ".note/personal-wiki",
    },
  },
  keys = {
    { "<leader>kk", ':lua require("kiwi").open_wiki_index()<cr>', desc = "Open Wiki index" },
    { "<leader>kp", ':lua require("kiwi").open_wiki_index("personal")<cr>', desc = "Open index of personal wiki" },
    { "<leader>kx", ':lua require("kiwi").todo.toggle()<cr>', desc = "Toggle Markdown Task" },
  },
  lazy = true,
}
