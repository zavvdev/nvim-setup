function! NetrwMapping()
  nmap <buffer> <TAB> mf         " Mark a file
  nmap <buffer> <Leader><TAB> mu " Unmark all marked files
  nmap <buffer> <S-TAB> mt       " Current browsing directory becomes markfile target
  
  nmap <buffer> ff %             " Create a new file
  nmap <buffer> fd d             " Create a new directory
  nmap <buffer> fe R             " Edit file/directory name
  nmap <buffer> fr D             " Delete file or empty directory
  nmap <buffer> fc mc            " Copy marked files to marked-file target directory
  nmap <buffer> fC mtmc          " After you mark your files you can put the cursor in a directory and this will assign the target directory and copy in one step
  nmap <buffer> fx mm            " Move marked files to marked-file target directory
  nmap <buffer> fX mtmm          " Same thing as fC but for moving files
  nmap <buffer> f; mx            " Run external shell command on marked files
  nmap <buffer> fb mb            " Bookmark current directory
  nmap <buffer> fbg gb           " Go to previous bookmarked directory
  nmap <buffer> fbr mB           " Remove most recent bookmark
  
  nmap <buffer> flm :echo join(netrw#Expose("netrwmarkfilelist"), "\n")<CR> " Show a list of marked files
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

" Multiline edit:
" 1. Put cursor on the first line you want to start from
" 2. Press Ctrl+V
" 3. Move cursor down to select the other lines you want to edit
" 4. Press A
" 5. Type the text you want to add
" 6. Press Esc
