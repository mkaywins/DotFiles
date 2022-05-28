:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a




call plug#begin(stdpath('data') . '/plugged')
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
Plug 'preservim/nerdtree' " NerdTree
Plug 'vim-airline/vim-airline' " Status barg
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim' 
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'ful1e5/onedark.nvim'
Plug 'ellisonleao/gruvbox.nvim'

call plug#end()


let R_pdfviewer = "zathura"
let R_openpdf = 1

"Use NeoSolarized coloscheme
"let g:neosolarized_termtrans=1
"runtime ./colors/NeoSolarized.vim
"colorscheme NeoSolarized
"colorscheme onedark

set background=dark " or light if you want light mode
colorscheme gruvbox

" Make the background transparent
autocmd VimEnter * hi Normal ctermbg=none 

"NerdTree options
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


