" Tabs {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab "tabs are spaces
" }}}
"  UI {{{
syntax on
set number
set showcmd
set cursorline
set wildmenu
set relativenumber
" }}}
" Search {{{
set showmatch
set incsearch
set hlsearch
" }}}
" Foldables {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set modelines=1
" }}}
" Colors {{{
syntax enable
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
" }}}
" Key Remaps {{{
nnoremap<leader><space> :nohlsearch<CR>
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR>
nnoremap td  :tabclose<CR>

autocmd FileType python nnoremap <F9> :w <bar> exec '!python' shellescape(@%,1)<cr>

autocmd Filetype c nnoremap <F9> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

autocmd Filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

autocmd FileType html nnoremap <F9> :w <bar> exec '!chromium-browser % & disown'<CR>

" }}}
" Tags {{{
set tags=./tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
command Ctags execute "!ctags -R *" 
"  }}}
"  powerline setup {{{
set laststatus=2 
set term=xterm-256color
"}}}
" Python {{{
au FileType python map <silent> <leader>b oimport pdb; pdb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport pdb; pdb.set_trace()<esc>
" }}}
" C++ {{{
let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" }}}
" YCM Config {{{
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" }}}
" UltiSnip Config {{{
let g:UltiSnipsExpandTrigger = "<C-c>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"
"}}}
" Syntastic Config {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
"Vundle Begin {{{
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/	
call vundle#rc()
" }}}
" Plugins {{{
Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree.git'

Plugin 'tpope/vim-fugitive'

Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'supertab'

Plugin 'vim-surround'

Plugin 'YouCompleteMe'

Plugin 'scrooloose/syntastic.git'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

" }}}
" Vundle End {{{
call vundle#end()
filetype plugin indent on
" }}}
" vim:foldmethod=marker:foldlevel=0
