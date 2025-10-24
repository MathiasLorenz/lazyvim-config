return {
  -- { "ellisonleao/gruvbox.nvim" },
  { "folke/tokyonight.nvim" },
  -- { "slugbyte/lackluster.nvim" },
  --  See https://github.com/zenbones-theme/zenbones.nvim?tab=readme-ov-file for colorschemes for zenbones
  -- { "zenbones-theme/zenbones.nvim", dependencies = "rktjmp/lush.nvim" },

  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}
--
-- Trippy but also cool
-- return {
--   {
--     "maxmx03/fluoromachine.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       local fm = require("fluoromachine")
--
--       fm.setup({
--         glow = true,
--         theme = "retrowave",
--         transparent = true,
--       })
--
--       vim.cmd.colorscheme("fluoromachine")
--     end,
--   },
-- }
