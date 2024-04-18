return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    config = function()
      require("codesnap").setup({
        watermark = "works on my machine™",
      })
    end,
  },
}
