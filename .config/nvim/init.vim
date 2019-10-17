call plug#begin()

"File Browser"
Plug 'scrooloose/nerdtree'              " Directory browsing

" Fullzy Finder"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Snippets Manager"
Plug 'SirVer/ultisnips'

" Bottom Bar "
Plug 'vim-airline/vim-airline'          " Status bar
Plug 'vim-airline/vim-airline-themes'          " Status bar

" lint/fixer "
Plug 'w0rp/ale'

" Buffer Browser"
Plug 'jeetsukumaran/vim-buffergator'

" Plugin to make working with Tmux Easier"
Plug 'christoomey/vim-tmux-navigator'

" Git Plugin"
Plug 'tpope/vim-fugitive'

" Shows git status on the side."
Plug 'airblade/vim-gitgutter'

" AutoComplete"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Custom Menus
Plug 'skywind3000/quickmenu.vim'

" SQL
Plug 'tpope/vim-dadbod'

" C# Editing
Plug 'OmniSharp/omnisharp-vim'             
Plug 'tpope/vim-dispatch'             

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" React
Plug 'mlaursen/vim-react-snippets'

" Colorschem 
Plug 'joshdick/onedark.vim'

"  Vue 
Plug 'posva/vim-vue'

" EchoDoc 
Plug 'Shougo/echodoc.vim'

" GO
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" GraphQL
Plug 'jparise/vim-graphql'

" Svelte
Plug 'evanleck/vim-svelte'

" Golden Ratio
Plug 'roman/golden-ratio'



call plug#end()


" Set , to leader key
let mapleader=","

syntax on
set termguicolors
colorscheme onedark

set nowrap                               " Don't wrap lines
set ruler                                " Show cursor line and column in status bar
set hidden
set nocursorline                         " Disable highlight current line
set re=1                                 " Fixes slow cursorline
set tabstop=2                            " A tab is two spaces
set smarttab                             " Insert tabs on the start of a line according to shiftwidth, not tabstop
set autoindent                           " Always set autoindenting on
set copyindent                           " Copy the previous indentation on autoindenting
set shiftwidth=2                         " Number of spaces to use forautoindenting
set shiftround                           " Use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                            " Set show matching parenthesis
set ignorecase                           " Ignore case when searching
set smartcase                            " Ignore case if search pattern is all lowercase
set incsearch                            " Show search matches as you type
set backspace=indent,eol,start           " Allow backspacing over everything in insert mode
set wildignore=*.swp,*.bak,*.pyc,*.class
set scrolloff=5                          " Start scrolling when 2 lines from edge
set sidescroll=1                         " Scroll horizontally by 1 column
set sidescrolloff=2                      " Start scrolling horizontally when 2 lines from edge
set number
set nolazyredraw                         " Disable lazyredraw
set expandtab                            " Use spaces intead of tabs
set signcolumn=yes
set updatetime=300
set shortmess+=c
set fillchars=vert:\                     " Sets the vertical split chars
set previewheight=5

" Faster Split Moving
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Faster Save
nnoremap <leader>m          :w<CR>

"Turn Edit Snippets
nnoremap <leader>es         :UltiSnipsEdit<CR>

"Edit .vimrc
nnoremap <leader>vm         :e ~/.config/nvim/init.vim<CR>

"Edit .Zshrc
nnoremap <leader>vz         :e ~/.zshrc<CR>

"Reload .vimrc
nnoremap <leader>V          :so ~/.config/nvim/init.vim<CR>

"Reveal file in NERDTree
nnoremap <leader>r          :NERDTreeFind<CR>

"Open NERDTree File Browser
nnoremap <Bslash>           :NERDTreeToggle<CR>

"Search All Git Files
nnoremap <leader>fo         :Files<CR>

"Search all files
nnoremap <leader>ff         :GFiles<CR>

"RipGrep for Specific Words
nnoremap <leader>fr         :Rg<CR>

"Shortcut to remove search highlighting
nnoremap <leader><CR> :noh<CR>

" Remap to make splits easier
nnoremap sp :vsplit <CR>
nnoremap sv :split <CR>

set splitbelow
set splitright

" Plugin Config
" ============== 
"
" ============= Golden Ratio Config
let g:golden_ratio_exclude_nonmodifiable = 1

"
" ============= COC Config (AutoComplete)
nnoremap <Leader><Space> :CocAction<CR>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction<Paste>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
"====================================="


"============= Quick Menu Reset (Used for quick DB Switching)"
" DADBOD
call g:quickmenu#reset()

" DadBoD Support
xmap <expr> <C-Q> db#op_exec()
" Import DB Configuration File
source /home/tevans/.config/db/dbconfigs.vim
""======================

" FZF Setup
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_buffers_jump = 1
let g:fzf_height = 11

let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all'
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit', }

" =============== AIRLINE CONFIG"

if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif

let g:airline_theme = "onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#coc#enabled = 1

" =========== ALE LINTING (Here Be Dragons)"
let g:ale_linters = {
      \'javascript': ['eslint'],
      \'javascript.jsx': ['eslint'],
      \'typescript': ['tslint'],
      \'cs': ['OmniSharp'],
      \'json': ['prettier'],
      \'vue': ['prettier'],
      \'css': ['prettier'],
      \'html': ['prettier'],
      \}

let g:ale_fixers = {
      \'javascript': ['eslint', 'prettier'],
      \'javascript.jsx': ['eslint', 'prettier'],
      \'typescript': ['tslint', 'prettier'],
      \'typescript.tsx': ['tslint', 'prettier'],
      \'cs': ['uncrustify'],
      \'json': ['prettier'],
      \'vue': ['prettier'],
      \'css': ['prettier'],
      \'html': ['prettier'],
      \}

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_sign_column_always = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
nmap <silent> <leader>k <Plug>(ale_previous_wrap)
nmap <silent> <leader>j <Plug>(ale_next_wrap)

" Ultisnips
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/ultisnips"
let g:UltiSnipsSnippetDirectories=["~/.config/ultisnips", "UltiSnips"]

" OmniSharp Config
let g:OmniSharp_server_stdio = 1
let g:OmniSharp_selector_ui = 'fzf'
"let g:OmniSharp_highlight_types = 2




augroup omnisharp_commands
  autocmd!
  autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
  autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
  autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
augroup END

nnoremap <leader>rm :OmniSharpRename<CR>
nnoremap <leader>cf :OmniSharpCodeFormat<CR>
nnoremap <leader>ss :OmniSharpStartServer<CR>

let g:omnicomplete_fetch_full_documentation = 1

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :CocList diagnostics<cr>



autocmd FileType cs setlocal ts=4 sts=4 sw=4

" EchoDoc "
" Or, you could use neovim's floating text feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
" To use a custom highlight for the float window,
" change Pmenu to your highlight group
highlight link EchoDocFloat Pmenu


" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

