function! NetrwMapping()
  nmap <buffer> <TAB> mf
  nmap <buffer> <Leader><TAB> mu
  nmap <buffer> <S-TAB> mt
  
  nmap <buffer> ff %
  nmap <buffer> fd d
  nmap <buffer> fe R
  nmap <buffer> fr D
  nmap <buffer> fc mc
  nmap <buffer> fC mtmc
  nmap <buffer> fx mm
  nmap <buffer> fX mtmm
  nmap <buffer> f; mx
  nmap <buffer> fb mb
  nmap <buffer> fbg gb
  nmap <buffer> fbr mB
  
  nmap <buffer> flm :echo join(netrw#Expose("netrwmarkfilelist"), "\n")<CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
