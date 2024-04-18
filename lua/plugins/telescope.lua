return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fs",
      function()
        require("telescope.builtin").lsp_document_symbols({ symbols = "function" })
      end,
      desc = "Find Document Symbols",
    },
  },
}
