require('basic')
require('coc-config')
require('lualine-config')
require('nvim-tree-config')
require('telescope-config')

require'nvim-web-devicons'.setup {
  default = true
}

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    }
  }


  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'christoomey/vim-tmux-navigator'

  use 'airblade/vim-gitgutter'

  use { 'neoclide/coc.nvim', branch = 'release'}

  use 'pangloss/vim-javascript'

  use 'leafgarland/typescript-vim'
  use 'peitalin/vim-jsx-typescript'

  use 'joshdick/onedark.vim'
  use 'sonph/onehalf'

  use 'fatih/vim-go'
end)
