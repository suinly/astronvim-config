return {
  "Exafunction/codeium.vim",
  event = "User AstroFile",
  config = function()
    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
    vim.keymap.set("i", "<C-n>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
    vim.keymap.set("i", "<C-p>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
    vim.keymap.set("i", "<C-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
    vim.keymap.set("n", "<leader>;", function()
      if vim.g.codeium_enabled == true then
        vim.cmd "CodeiumDisable"
      else
        vim.cmd "CodeiumEnable"
      end
    end, { noremap = true, desc = "Toggle Codeium active" })
  end,
}
