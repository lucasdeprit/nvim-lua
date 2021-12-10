local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Put this at the end after all plugins
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
   }
   use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/nvim-compe'
 if packer_bootstrap then
    require('packer').sync()
  end
end)
