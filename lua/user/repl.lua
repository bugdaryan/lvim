require("nvim-python-repl").setup()

vim.api.nvim_set_keymap('n', 's', ":SendPyObject<CR>", {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<leader>r', ":<C-U>SendPySelection<CR>",{noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<leader>ss', ":SendPyBuffer<CR>", {noremap=true,silent=true})
