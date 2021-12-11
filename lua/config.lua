local options = {
        
  --Clipboard
  clipboard = 'unnamed,unnamedplus',
  
  --Cursor line display
  cursorline = true,
  
  --Enable use of mouse
  mouse = 'a',
  
  --Terminal colors 
  termguicolors  = true, 
  
  --Number display
  number = true, 
  relativenumber = true,
  numberwidth = 2,
  
  --Always leave space down
  scrolloff= 8,

}
local globals = {}
for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end

vim.cmd [[
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2
set tabstop=2
let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-emmet', 'coc-tslint', 'coc-prettier', 'coc-html', 'coc-explorer' ]
]]
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        vim.fn["coc#refresh"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    else
        return t "<C-h>"
    end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
        
--gruvbox theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
