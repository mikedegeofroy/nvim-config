vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.g.mapleader = " "

vim.api.nvim_set_keymap(
  't',
  '<C-j>',
  '<C-\\><C-n>:lua ToggleTerminal()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
  'n',
  '<C-j>',
  ':lua ToggleTerminal()<CR>',
  { noremap = true, silent = true }
)

vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', { noremap = true })


