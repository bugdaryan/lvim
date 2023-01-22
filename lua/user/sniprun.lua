require'sniprun'.setup({
  display = { "TerminalWithCode" },
})

vim.api.nvim_set_keymap('v', 's', '<Plug>SnipRun', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>s', '<Plug>SnipRunOperator', {silent = true})
vim.api.nvim_set_keymap('n', '<leader>ss', '<Plug>SnipRun', {silent = true})
