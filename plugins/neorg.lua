return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.keybinds"] = {
        -- https://github.com/nvim-neorg/neorg/blob/main/lua/neorg/modules/core/keybinds/keybinds.lua
        config = {
          default_keybinds = true,
          neorg_leader = "<Leader><Leader>",
        },
      }, 
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      }, -- Enables support for completion plugins
      ["core.journal"] = {}, -- Enables support for the journal module
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            private = "~/Neorg/private",
            fastanime = "~/Neorg/fast-anime",
            xlmedia = "~/Neorg/xlmedia",
            turclubpik = "~/Neorg/turclubpik",
          },
        },
      },
    },
  },
}
