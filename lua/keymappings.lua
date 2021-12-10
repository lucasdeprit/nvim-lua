-- Leader Space
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- No disable search highlight
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })
-- Open explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Fast write and quit 
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

-- Fast exit insert mode
vim.api.nvim_set_keymap('i', 'ii', '<ESC>', { noremap = true, silent = true })

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indenting 
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- Tab between buffers
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprev<CR>', { silent = true })

-- Move Line up
vim.api.nvim_set_keymap('x', 'J', ':move \'<+1<CR>gv-gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', { noremap = true, silent = true })

-- Tab autocomplete
vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })
