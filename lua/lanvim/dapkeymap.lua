
vim.keymap.set('n', '<F5>', ':lua require"dap".continue()<CR>')
vim.keymap.set('n', '<F8>', ':lua require"dap".terminate()<CR>')
vim.keymap.set('n', '<F10>', ':lua require"dap".step_over()<CR>')
vim.keymap.set('n', '<F11>', ':lua require"dap".step_over()<CR>')
vim.keymap.set('n', '<F12>', ':lua require"dap".step_out()<CR>')
vim.keymap.set('n', '<leader>b', ':lua require"dap".toggle_breakpoint()<CR>')
vim.keymap.set('n', '<leader>B', ':lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>')
