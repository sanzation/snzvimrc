set nocompatible              " be iMproved, required
filetype off                  " required


set nowrap
syntax on
set hlsearch "highligt search result 
set incsearch
set autoindent
set lazyredraw
set wildmenu
    
colorscheme office-dark 
au BufNewFile,BufRead *.ts setlocal filetype=javascript

set go-=m
set go-=T

set guifont=Lucida_Console:h11

set makeprg=build.bat
nnoremap <F7> :make<CR>
nnoremap _ :CtrlP<CR>
nnoremap ; :CtrlPBuffer<CR>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

function! DBextPostResult(db_type, buf_nr)
            " If dealing with a Ora database
            if a:db_type == 'ORA'
                " Assuming the first column is an integer
                " highlight it using the WarningMsg color
                syn match logWarn '^\d\+'
                hi def link logWarn		WarningMsg
		set filetype=sql
            endif
endfunction

      
" Remap leader to space
let mapleader = "\<Space>"

" <Leader>w to save file (a lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>

" Copy & paste to system clipboard with <leader>p and <leader>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
