:set number
:set relativenumber
:set autoindent
:set tabstop=4 " size of a hard tabstop
:set expandtab " always uses spaces instead of tab characters
:set shiftwidth=4 " size of an "indent"
:set smarttab
:set softtabstop=4
:set mouse=a
:set spell
set spelllang=en 
set spellsuggest=best,9



nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>


call plug#begin(stdpath('data') . '/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'preservim/nerdtree' " NerdTree
Plug 'vim-airline/vim-airline' " Status barg
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}	
Plug 'neovim/nvim-lspconfig'

" Fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Auto completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'ryanoasis/vim-devicons'

Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'

" colorschemes
Plug 'navarasu/onedark.nvim'
Plug 'ful1e5/onedark.nvim'
call plug#end()

" autocomplete options
set completeopt=menu,menuone,noselect

" require plugin configs
:lua require('mkaywins')

let R_pdfviewer = "zathura"
let R_openpdf = 0

colorscheme onedark

" Make the background transparent
autocmd VimEnter * hi Normal ctermbg=none 

"NerdTree options
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" rnvimr options
" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1
nmap <space>r :RnvimrToggle<CR>
