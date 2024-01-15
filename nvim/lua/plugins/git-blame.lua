return {
  "f-person/git-blame.nvim",
  config = function()
    require("gitblame").setup({
      -- :GitBlameToggle to enable/disable
      enabled = false,
    })
  end,
}
