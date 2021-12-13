local keymap = vim.api.nvim_set_keymap
local dfopt = { noremap = true, silent = true }

-- Leader Space
keymap('n', '<Space>', '<NOP>', dfopt )
vim.g.mapleader = ' '

-- No disable search highlight
keymap('n', '<Leader>h', ':set hlsearch!<CR>', dfopt )
--
-- Open explorer
keymap('n', '<Leader>e', ':CocCommand explorer<CR>', dfopt )

-- Fast write and quit 
keymap('n', '<Leader>q', ':q<CR>', dfopt )
keymap('n', '<Leader>w', ':w<CR>', dfopt )

-- Fast exit insert mode
keymap('i', 'ii', '<ESC>',  dfopt )

-- Better window movement
keymap('n', '<C-h>', '<C-w>h', { silent = true })
keymap('n', '<C-j>', '<C-w>j', { silent = true })
keymap('n', '<C-k>', '<C-w>k', { silent = true })
keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indenting 
keymap('v', '<', '<gv', dfopt )
keymap('v', '>', '>gv', dfopt )

-- Tab between buffers
keymap('n', '<TAB>', ':bnext<CR>', { silent = true })
keymap('n', '<S-TAB>', ':bprev<CR>', { silent = true })

-- Delete buffers faster
keymap('n', '<Leader>d', ':bdelete<CR>', dfopt )

-- Move Line up
keymap('x', 'J', ':move \'<+1<CR>gv-gv\'', dfopt )
keymap('x', 'K', ':move \'<-2<CR>gv-gv\'', dfopt )

-- Tab autocomplete
keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', dfopt )
keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- Startup page on F2
keymap('n', '<F2>', ":Alpha<cr>", dfopt )
 
