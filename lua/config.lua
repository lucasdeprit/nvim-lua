--Line number
vim.opt.number = true  
vim.opt.relativenumber = true  
vim.o.numberwidth = 2

--Cursor
vim.opt.cursorline = true

--Clipboard
vim.o.clipboard = 'unnamedplus'

--Mouse
vim.o.mouse = 'a'

--term gui colors
vim.opt.termguicolors = true

--gruvbox theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
