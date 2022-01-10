local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- Put this at the end after all plugins
   use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
   use {'neoclide/coc.nvim', branch = 'release'}
   use 'neovim/nvim-lspconfig'
   use 'hrsh7th/vim-vsnip'
   use 'sheerun/vim-polyglot'
   use 'jose-elias-alvarez/null-ls.nvim'
   use 'jose-elias-alvarez/nvim-lsp-ts-utils'
   use 'williamboman/nvim-lsp-installer'
   use 'MunifTanjim/prettier.nvim'
   use 'hrsh7th/nvim-compe'
   use 'nvim-lua/plenary.nvim'
   use 'wakatime/vim-wakatime'
   use 'akinsho/toggleterm.nvim'
   use 'kevinhwang91/rnvimr'
   use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
	 use {
    'goolord/alpha-nvim',
   use {
    --barbar.nvim top bar
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
   },
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.luak'.opts)
    end
}
    -- IDE
    use 'nvim-treesitter/nvim-treesitter'
 if packer_bootstrap then
    require('packer').sync()
  end
end)


