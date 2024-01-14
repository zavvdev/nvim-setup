return {
  "akinsho/git-conflict.nvim",
  version = "1.2.2",
  config = function()
    require("git-conflict").setup({
      default_mappings = {
        ours = "co",
        theirs = "ct",
        none = "c0",
        both = "cb",
        next = "]x",
        prev = "[x",
      },
    })
  end,
}
