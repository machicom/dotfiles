"------------------------------------------------------------
"------------------------ BASIC -----------------------------
"------------------------------------------------------------
"colorscheme molokai
"set t_Co=256

"" hybrid
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

"" solarized dark
"let g:solarized_termcolors=16
"let g:solarized_termtrans=0
"let g:solarized_degrade=0
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast='normal'
"let g:solarized_visibility='normal'

colorscheme solarized

syntax on
set background=dark

filetype plugin on
set nobackup
set number
set wildmenu
set hlsearch
set backspace=indent,eol,start
set showmatch
set mouse=a
set ttymouse=xterm2
"## tabs
set autoindent
set tabstop=4
set shiftwidth=4 " use indent space
set expandtab
"## swap location
set directory=~/.vim/swp
"## color setting
set nocompatible
set term=builtin_xterm
"## search option 大文字小文字区別なし
set ic
set ruler
"## color schema
highlight rubyDefine term=bold cterm=bold ctermfg=6
highlight rubyConstant term=bold cterm=bold ctermfg=6

"highlight PmenuSel ctermbg=red
"highlight Pmenu ctermbg=darkblue
"highlight Search ctermbg=yellow
"highlight IncSearch ctermbg=yellow
"highlight MatchParen ctermbg=Green
"highlight WildMenu ctermbg=yellow
"highlight Constant term=bold cterm=bold ctermfg=1 guifg=Orange
"highlight Special term=underline cterm=bold ctermfg=5 guifg=#ffa0a0

"------------------------------------------------------------
"------------------------ BIND ------------------------------
"------------------------------------------------------------
"## char code
set fileencodings=utf-8,euc-jp,sjis,cp932

" list表示
set list
set listchars=tab:^\ ,trail:~

"## diff opt
set diffopt=filler,vertical,iwhite
" NERDTree 
nmap <silent> <F10> :NERDTreeToggle<CR>
" Taglist 
nnoremap <silent> <F11> :TlistToggle<CR>
" call buffer List
nmap bl :ls<CR>:b
" call BufOnly. its clear all buffer. 
nmap <silent> <Del> :BufOnly<CR>
" move buffer pointer
nmap <silent> <C-N> :bn<CR>
nmap <silent> <C-P> :bp<CR>
" call methods or variables candidate lists
nmap <silent> <C-]> g<C-]>
"# vimgrep時に自動でcwにリダイレクトするように設定
au QuickfixCmdPost grep,vimgrep copen
command! -nargs=+ Grep execute 'silent grep! <args>'


"------------------------------------------------------------
"------------------------ RTRIM -----------------------------
"------------------------------------------------------------
function! RTrim()
	let s:cursor = getpos(".")
	%s/\s\+$//e
	call setpos(".", s:cursor)
endfunction
autocmd BufWritePre *.php,*.rb,*.js,*.bat call RTrim()


"------------------------------------------------------------
"------------------------ CTAGS -----------------------------
"------------------------------------------------------------
"set tags=~/.tags
"function! UPDATE_TAGS()
"	let l:file_path = expand("%:p")
"	let l:cmd = 'ctags --append=yes -f ~/.tags ' . file_path
"	let l:result = system(cmd)
"endfunction
"autocmd BufWritePost *.php, *.rb call UPDATE_TAGS()


"------------------------------------------------------------
"----------------------- SKELETON ---------------------------
"------------------------------------------------------------
autocmd BufNewFile *.rb 0r ~/.vim/skeleton/skeleton.rb

