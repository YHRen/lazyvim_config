return {
  "olimorris/codecompanion.nvim",
  keys = {
    { "<leader>aa", ":CodeCompanionChat Toggle<cr>", mode = "n", desc = "CodecompanionChat" },
    { "<leader>ai", ":CodeCompanion", mode = { "v", "n" }, desc = "CodecompanionChat Inline" },
  },
  opts = {
    adapters = {
      -- adapters
      qwen3 = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "qwen3",
          schema = {
            model = {
              default = "qwen3:235b",
            },
            num_ctx = {
              default = 40960,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
      deepseek = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "deepseek",
          schema = {
            model = {
              default = "deepseek-r1:8b",
            },
            num_ctx = {
              default = 128000,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
      devstral = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "devstral",
          schema = {
            model = {
              default = "devstral:latest",
            },
            num_ctx = {
              default = 128000,
            },
            num_predict = {
              default = -1,
            },
          },
        })
      end,
    },
    -- stratergies
    strategies = {
      chat = {
        adapter = "qwen3",
      },
      inline = {
        adapter = "qwen3",
      },
    },
    -- extensions mcp
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          make_vars = true,
          make_slash_commands = true,
          show_result_in_chat = true,
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
}
