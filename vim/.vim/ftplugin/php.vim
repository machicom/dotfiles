setlocal tw=78
setlocal fo+=cmM
" php dictionaly
setlocal dictionary=~/.vim/dict/php.dict
" php comment (wget http://www.vim.org/scripts/download_script.php?src_id=4666 -O php-doc.vim))
noremap <F9> <esc>:call PhpDocSingle()<CR>
noremap <F9> :call PhpDocSingle()<CR>
vnoremap <F9> :call PhpDocRange()<CR>

" set compiler for make
if !exists("php_compiler_loaded")
    let php_compiler_loaded = 1
    au BufWritePost *.php :compiler php
endif

" run php 
nmap <F5> :!php %<CR>

" run php unit
nmap <F6> :!phpunit -c /web/homes/unit/`whoami`/php_include/app/search/phpunit.xml.dist --stderr %<CR>
