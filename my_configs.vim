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
