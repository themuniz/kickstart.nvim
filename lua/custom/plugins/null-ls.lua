return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'
    null_ls.setup {
      sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.sqlfluff,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.rustywind.with { filetypes = { 'html', 'jinja', 'htmldjango' } },
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.djlint.with {
          filetypes = { 'html', 'jinja', 'htmldjango' },
        },
        null_ls.builtins.diagnostics.djlint.with {
          filetypes = { 'html', 'jinja', 'htmldjango' },
        },
        null_ls.builtins.diagnostics.shellcheck,
        null_ls.builtins.diagnostics.flake8,
      },
    }
  end,
}
