syntax enable
filetype plugin on

set number
set wrap
set expandtab
set textwidth=80
set foldcolumn=0
set laststatus=0
set showtabline=0
set clipboard =unnamedplus
set laststatus=2

" set colorcolumn=80
" set cursorline
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*


" Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Remaps
nnoremap <esc><esc> :noh<return>
nnoremap o o<Esc>
nnoremap j gj
nnoremap k gk


let g:lightline = {'colorscheme': 'seoul256'}
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
" let g:airline_theme = 'minimalist'

let g:jedi#popup_on_dot = 0

let g:ale_linters_explicit = 1
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python' : ['yapf']}
" let g:ale_fix_on_save = 1

highlight clear ALEErrorSign
highlight clear ALEWarningSign


let g:deoplete#enable_at_startup = 1

let g:tex_flavor = 'latex'
let g:Tex_Diacritics = 1
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
" let g:Tex_MultipleCompileFormats = 'pdf'


" Clean Tex Logfiles
map <leader>c :w! \| !compiler <c-r>%<CR>
autocmd VimLeave *.tex !texclear %

" Markdown
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

" Deletes all trailing whitespace and newlines at end of file
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

autocmd FileChangedShell * echohl WarningMsg | echo "File changed shell." | echohl None
autocmd FileType * setlocal formatoptions-= formatoptions-=r formatoptions-=o

" C/C++ Compile and Build
nnoremap <silent> <F8> :w <CR> :!g++ -std=c++17 % -o %< -Wall -Wshadow -Wextra -O2 -Wno-unused-result && ./%< <CR>
nnoremap <silent> <F9> :w <CR> :!g++ -std=c++17 -Wshadow -Wall % -o %< -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && ./%< <CR>


" Themes
set background=dark

let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'

colorscheme gruvbox

hi Error NONE
hi ErrorMsg NONE

hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE


" Hide Statusbar- Shift +S
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
