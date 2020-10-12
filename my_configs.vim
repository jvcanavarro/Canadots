" Plugins -> Supertab, Jedi, Fireplace, Vimtex + LatexMK, Polyglot

" Python -> Flake8, Yapf

" Remove Lightline, Tabline from Sources, Goyo and Zenroom.


" Basic
syntax enable
filetype plugin on
set number
set nowrap
set expandtab
set nocompatible
set foldcolumn=0
set laststatus=0
set showtabline=0
" set colorcolumn=80
" set cursorline

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-= formatoptions-=r formatoptions-=o


" Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Some Remaps
nnoremap <esc><esc> :noh<return>
nnoremap o o<Esc>
" nnoremap j gj
" nnoremap k gk

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e


" Airline Themes
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
" let g:airline_theme = 'minimalist'

"Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

nnoremap <silent> <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr><cr>

" Jedi
" autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_on_dot = 0


"Ale -> Linting & Fixing
let g:ale_linters_explicit = 1
" let g:ale_fix_on_save = 1

let g:ale_linters = {
\   'python': ['flake8'],
\}

let g:ale_fixers = {
\   'python' : ['yapf'],
\}

highlight clear ALEErrorSign
highlight clear ALEWarningSign

"Polyglot
" let g:polyglot_disabled = ['latex']

"Latex
let g:tex_flavor = 'latex'
let g:Tex_Diacritics = 1

let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
" imap <C-space> <Plug>IMAP_JumpForward
" let g:Tex_MultipleCompileFormats = 'pdf'

autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None

" Compile and Clean Latex Logfiles
map <leader>c :w! \| !compiler <c-r>%<CR>
autocmd VimLeave *.tex !texclear %

"Markdown
autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

" autocmd BufWritePost *.md silent !pandoc % -t beamer -o %:r.pdf



set background=dark
" set background=light

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'

colorscheme gruvbox
" colorscheme solarized

hi Error NONE
hi ErrorMsg NONE

" hi Comment cterm=italic
" hi Comment guifg=#5C6370 ctermfg=59

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE


" Hide Statusbar
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

let base16colorspace=256
" set termguicolors
