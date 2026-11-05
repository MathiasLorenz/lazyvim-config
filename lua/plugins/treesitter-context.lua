return {
  "nvim-treesitter/nvim-treesitter-context",
  opts = {
    max_lines = 7, -- cap how many context lines stack at the top
    multiline_threshold = 1, -- show only the first line of a multi-line header
    mode = "cursor", -- context follows the cursor; "topline" follows the top of the window
    trim_scope = "outer", -- when over max_lines, drop the outermost scopes first
  },
  keys = {
    {
      "[x",
      function()
        require("treesitter-context").go_to_context(vim.v.count1)
      end,
      desc = "Jump to context",
    },
  },
}
