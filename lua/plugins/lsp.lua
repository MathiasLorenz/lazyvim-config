-- See `:help lspconfig-setup`, really helpful!
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        --- Elixir
        lexical = {
          mason = false,
          autostart = true,
        },
        elixirls = {
          mason = false,
          autostart = false,
        },
        --- Python
        ruff = {
          mason = false,
          autostart = true,
        },
        -- jedi_language_server = {
        --   mason = false,
        --   autostart = false,
        -- },
        pylsp = {
          mason = false,
          autostart = true,
          settings = {
            -- see https://github.com/python-lsp/python-lsp-server/blob/develop/CONFIGURATION.md
            pylsp = {
              plugins = {
                -- formatter options
                pycodestyle = {
                  enabled = true,
                  maxLineLength = 120, -- Not the best to set globally but ok for now
                },
                black = { enabled = false },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- linter options
                pylint = {
                  enabled = true,
                  args = { "--max-line-length=120", "--max-args=8", "--max-positional-arguments=8" },
                },
                pyflakes = { enabled = false },
                -- type checker
                pylsp_mypy = { enabled = true },
                -- auto-completion options
                jedi_completion = { fuzzy = true },
                -- import sorting
                pyls_isort = { enabled = true },
              },
            },
          },
        },
      },
    },
  },
}
