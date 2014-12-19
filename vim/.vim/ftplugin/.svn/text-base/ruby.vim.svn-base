"## tabs
set autoindent
set tabstop=2
set shiftwidth=2 " use indent space
set expandtab
compiler ruby
" rspec
" カーソルのある行のテストのみ実行する
function! RSPEC_LINE_EXECUTE()
	let l:file_path = expand("%:p")
	let l:cmd = '!rspec -cfs ' . file_path . ' -l ' . line(".")
  execute cmd
endfunction
nmap <F6> :!rspec -cfs % <CR>
nmap <F7> :call RSPEC_LINE_EXECUTE()<CR>
