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
	
  --tab configurations
  expandtab = true,
  shiftwidth = 2,
  softtabstop = 2,
  
  --Fold expresions
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",

  foldlevel = 9,
  
  --ignore case
  ignorecase = true,

}

local globals = {}

local bo = {
  
  --indentation
  autoindent = true,
  smartindent = true,

}

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end

for k, v in pairs(bo) do
  vim.bo[k] = v
end

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

       
--gruvbox theme
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

--ranger

vim.g["rnvimr_enable_ex"] = 1
vim.g["NERDTreeHijackNetrw"] = 0
vim.g["loaded_netrwPlugin"] = 1
