return {
  "f-person/git-blame.nvim",
  config = function()
    require("gitblame").setup({
      delay = 1500,
    })
  end,
}
