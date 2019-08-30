set number
set colorcolumn=80
set nowrap
set cursorline
set expandtab       " tabs are spaces

nnoremap j gj
nnoremap k gk

let base16colorspace=256

set background=dark
colorscheme base16-synth-midnight-dark 

set termguicolors

hi Error NONE
hi ErrorMsg NONE
hi Comment cterm=italic
hi Comment guifg=#5C6370 ctermfg=59

hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
