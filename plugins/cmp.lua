return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "jcdickinson/codeium.nvim",
  },
  opts = function(_, opts)
    local cmp = require "cmp"

    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "codeium", priority = 1250 },
    }

    return opts
  end,
}
