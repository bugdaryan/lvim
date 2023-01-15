local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
  C = {
    name = "Python",
    t = { "<cmd>lua require('dap-python').test_method()<cr>", "Test Method" },
    T = { "<cmd>lua require('dap-python').test_class()<cr>", "Test Class" },
    d = { "<cmd>lua require('dap-python').debug_selection()<cr>", "Debug Selection" },
  },
}

which_key.register(mappings, opts)

require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")

-- require'sniprun'.setup({
--     display = { "Terminal" },
--     display_options = {
--         terminal_width = 45,
--     },
--     selected_interpreters={'Python3_jupyter'}
-- })
require "iron.core".setup({
  config = {
    should_map_plug = false,
    scratch_repl = true,
    repl_definition = {
      python = {
        command = { "ipython" },
        format = require("iron.fts.common").bracketed_paste,
      },
    },
  },
  keymaps = {
    send_motion = "ctr",
    visual_send = "ctr",
  },
})

