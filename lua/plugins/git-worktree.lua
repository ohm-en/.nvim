return {
  {
    "ThePrimeagen/git-worktree.nvim",
    config = function()
      require("git-worktree").setup()
      require("telescope").load_extension("git_worktree")
    end,
    keys = {
      {
        "<leader>fB",
        function()
          require("telescope").extensions.git_worktree.git_worktrees()
        end,
        desc = "Find Git Worktree",
      },
      {
        "<leader>fC",
        function()
          require("telescope").extensions.git_worktree.create_git_worktree()
        end,
        desc = "Create Git Worktree",
      },
    },
  },
}
