" Plugins -> Ale, Supertab, Jedi, Fireplace, Vimtex
" Python -> Flake8, Yapf
" Remove Lightline and Tabline from Sources

set number
set nowrap
set expandtab
set foldcolumn=0
set laststatus=0
set showtabline=0
" set colorcolumn=80
" set cursorline

autocmd FileType * setlocal formatoptions-= formatoptions-=r formatoptions-=o

nnoremap j gj
nnoremap k gk

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Jedi
autocmd FileType python setlocal completeopt-=preview


"Ale -> Linting & Fixing

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'python' : ['yapf'],
\}

highlight clear ALEErrorSign
highlight clear ALEWarningSign

" let base16colorspace=256

" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='minimalist'

set background=dark

colorscheme gruvbox

hi Error NONE
hi ErrorMsg NONE
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set showtabline=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>

set termguicolors
