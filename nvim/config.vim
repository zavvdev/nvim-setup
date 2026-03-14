function! NetrwMapping()
  " Mark a file
  nmap <buffer> <TAB> mf         
  
  " Unmark all marked files
  nmap <buffer> <Leader><TAB> mu 
  
  " Current browsing directory becomes markfile target
  nmap <buffer> <S-TAB> mt       
  
  " Create a new file
  nmap <buffer> ff %    

  " Create a new directory
  nmap <buffer> fd d             
  
  " Edit file/directory name
  nmap <buffer> fe R            

  " Delete file or empty directory
  nmap <buffer> fr D             

  " Copy marked files to marked-file target directory
  nmap <buffer> fc mc         

  " After you mark your files you can put the cursor in a directory
  " and this will assign the target directory and copy in one step
  nmap <buffer> fC mtmc          

  " Move marked files to marked-file target directory
  nmap <buffer> fx mm            
  
  " Same thing as fC but for moving files
  nmap <buffer> fX mtmm          
  
  " Run external shell command on marked files
  nmap <buffer> f; mx            
  
  " Bookmark current directory
  nmap <buffer> fb mb            
  
  " Go to previous bookmarked directory
  nmap <buffer> fbg gb           
  
  " Remove most recent bookmark
  nmap <buffer> fbr mB           
  
  " Show a list of marked files
  nmap <buffer> flm :echo join(netrw#Expose("netrwmarkfilelist"), "\n")<CR> 
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END
