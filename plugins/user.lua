return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "gptlang/CopilotChat.nvim",
    cmd = "Copilot",
    event = "User AstroFile",
  },
  {
    "pocco81/auto-save.nvim",
    event = "BufEnter",
  },
  {
    "nvim-neorg/neorg",
    lazy = false,
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup {
        load = {
          ["core.summary"] = {},
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              folds = true,
              icon_preset = "diamond",
              icons = {
                todo = {
                  pending = {
                    icon = "⏱"
                  },
                }
              },
            },
          }, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                work = "~/notes/work",
                home = "~/notes/home",
              },
              default_workspace = "home"
            },
          },
        },
      }
    end,
  }
}
