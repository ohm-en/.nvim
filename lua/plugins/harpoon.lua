return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})
  end,
  keys = {
    {
      desc = "Open harpoon window",
      "<leader>fh",
      function()
        local harpoon = require("harpoon")
        local conf = require("telescope.config").values
        local harpoon_files = harpoon:list()
        local file_paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(file_paths, item.value)
        end

        require("telescope.pickers")
          .new({}, {
            prompt_title = "Harpoon",
            finder = require("telescope.finders").new_table({
              results = file_paths,
            }),
            previewer = conf.file_previewer({}),
            sorter = conf.generic_sorter({}),
          })
          :find()
        require("telescope.builtin").lsp_document_symbols({ symbols = "function" })
      end,
    },
    {
      desc = "Add Harpoon File",
      "<leader>a",
      function()
        local harpoon = require("harpoon")
        harpoon:list():add()
      end,
    },
  },
}
