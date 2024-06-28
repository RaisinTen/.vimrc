" airline
let g:airline_powerline_fonts = 1

" syntax + line numbering
:syntax on
:filetype on
:set number
:set relativenumber
:set hlsearch

" auto close parens
" "inoremap " ""<left>
" "inoremap ' ''<left>
" "inoremap ( ()<left>
" "inoremap [ []<left>
" inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" treats objective-c++ files as c++ files
au BufReadPost *.mm set filetype=cpp

" tabs and spaces
" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on

    " Use actual tab chars in Makefiles.
    autocmd FileType make set tabstop=2 shiftwidth=2 softtabstop=0 noexpandtab
 endif

" For everything else, use a tab width of 4 space chars.
set tabstop=2       " The width of a TAB is set to 2.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 2.
set shiftwidth=2    " Indents will have a width of 2.
set softtabstop=2   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.

" colorcolumn at 80 chars width
set colorcolumn=80

" fix ts bug: https://vi.stackexchange.com/questions/25086/vim-hangs-when-i-open-a-typescript-file
set regexpengine=0
