return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  opts = {
    widget_guides = { enabled = true },
    lsp = {
      settings = {
        showtodos = true,
        completefunctioncalls = true,
        analysisexcludedfolders = {
          vim.fn.expand '$Home/.pub-cache',
        },
        renamefileswithclasses = 'prompt',
        updateimportsonrename = true,
        enablesnippets = false,
      },
    },
    debugger = {
      enabled = true,
      run_via_dap = false,
      exception_breakpoints = {},
      --      register_configurations = function(paths)
      --        local dap = require 'dap'
      --        -- See also: https://github.com/akinsho/flutter-tools.nvim/pull/292
      --        dap.adapters.dart = {
      --          type = 'executable',
      --          command = paths.flutter_bin,
      --          args = { 'debug-adapter' },
      --        }
      --        dap.configurations.dart = {}
      --      end,
    },
  },
  config = true,
}
