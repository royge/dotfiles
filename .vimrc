execute pathogen#infect()                                                                    
call pathogen#helptags()                                                                     
                                                                                             
" Smart way to move between windows                                                          
no <C-j> <C-W>j                                                                              
no <C-k> <C-W>k                                                                              
no <C-h> <C-W>h                                                                              
no <C-l> <C-W>l                                                                              
                                                                                             
" My colors                                                                                  
color jellybeans                                                                             
                                                                                             
syntax on                                                                                    
filetype plugin indent on                                                                    
set tabstop=4                                                                                
set shiftwidth=4                                                                             
set softtabstop=4                                                                            
set expandtab                                                                                
set number                                                                                   
noremap <Up> <NOP>                                                                           
noremap <Down> <NOP>                                                                         
noremap <Left> <NOP>                                                                         
noremap <Right> <NOP>                                                                        
                                                                                             
no <leader>n :NERDTreeToggle<cr>
