vim.g.mapleader="," 
vim.o.termguicolors= true
vim.g.nowrap= true
vim.o.hidden=true
vim.o.re=1                                 
vim.o.tabstop=2                            
vim.o.smarttab=true                            
vim.o.autoindent=true                       
vim.o.copyindent=true                  
vim.o.shiftwidth=2                         
vim.o.shiftround=true                          
vim.o.showmatch=true                       
vim.o.ignorecase=true                   
vim.o.smartcase=true              
vim.o.incsearch=true         
vim.o.backspace="indent,eol,start"           
vim.o.wildignore="*.swp,*.bak,*.pyc,*.class"
vim.o.scrolloff=5                          
vim.o.sidescroll=1                         
vim.o.sidescrolloff=5                      
vim.o.number=true
vim.g.nolazyredraw=true                         
vim.o.expandtab=true                            
vim.o.signcolumn="yes"
vim.o.updatetime=300
vim.o.fillchars="vert:\\"                     
vim.o.previewheight=5
vim.o.clipboard="unnamedplus"
vim.o.splitbelow=true
vim.o.splitright=true


-- Keys Assignment

vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>m',':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vm',':e ~/.config/nvim/init.vim<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vz',':e ~/.zshrc<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>V',':so ~/.config/nvim/init.vim<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Bslash>',':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r',':NvimTreeRefresh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fo',':Files<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ff',':GFiles<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fr',':Rg<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader><CR>', ':noh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sp', ':vsplit <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', 'sv', ':split <CR>', { noremap = true })

-- Base64
vim.api.nvim_set_keymap('v', '<leader>64', 'c<c-r>=system(\'base64 --decode\', @\")<cr><esc>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>46', 'c<c-r>=system(\'base64\', @\")<cr><esc>', { noremap = true })
