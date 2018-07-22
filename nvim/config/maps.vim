scriptencoding uft-8

let mapleader = ','

" open vim configuration in a new window
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

" source vim configuration
nnoremap <leader>vs :source $MYVIMRC<cr>:noh<cr>h

" open highlight colors
nnoremap <leader>hi :execute 'vsplit '.g:easycolor_path<cr>

" save a file
nnoremap <leader>w :w<cr>:<cr>

" quit
nnoremap <leader>q :qa<cr>

" <c-]> is the default vim map go to definition
nnoremap gd <c-]>

nnoremap Y y$

" add \v (magic regex) to do normal regex searchs
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" find in files
nnoremap <c-_> :FindInFiles<space>
nnoremap <leader>f :exec "FiF ".expand("<cword>")<cr>

" highlight the word under cursor
nnoremap <leader>n *N
vnoremap <leader>n y/<c-r>"<cr>

" remove search higlight
nnoremap <leader><space> :noh<cr>

" buffers: previous, next, close
nnoremap <c-h> :bp<cr>:<c-c>
nnoremap <c-l> :bn<cr>:<c-c>
nnoremap <c-x> :Bd<cr>

" move lines down/up
nnoremap - :m .+1<cr>==
nnoremap _ :m .-2<cr>==

" enclosed width "quotes"
nmap <leader>" ysiw"
nmap <leader>' ysiw'
vmap <leader>" S"
vmap <leader>' S'

" return to normal mode
inoremap <c-c> <esc>
nnoremap <c-c> <c-c>:<c-c>

" cut/copy/paste to/from clipboard
vnor <c-x> "+x
vnor <c-y> "+y
inor <c-v> <C-O>:set paste<CR><C-R>+<C-O>:set nopaste<CR>
vnor <c-v> :<C-U>set paste<CR>gvc<C-R>+<C-O>:set nopaste<CR><ESC>

" save workspace
"nnoremap <leader>tw :ToggleWorkspace<CR>


nnoremap <leader>c :GitGutterToggle<cr>
nnoremap <leader>z Vi{zfkj

" Show hi group under cursor
map <leader>hs :call ShowHi()<cr>


function! ShowHi()

  let hi    = synIDattr(synID(line('.'), col('.'), 1), 'name')
  let trans = synIDattr(synID(line('.'), col('.'), 0), 'name')
  let lo    = synIDattr(synIDtrans(synID(line('.'), col('.'), 1)), 'name')

  echo 'hi<'.hi.'> '.
      \'trans<'.trans.'> '.
      \'lo<'.lo.'>'

endfunction

"command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)

"function! s:RunShellCommand(cmdline)
  ""echo a:cmdline
  "let expanded_cmdline = a:cmdline

  "for part in split(a:cmdline, ' ')
     "if part[0] =~ '\v[%#<]'
        "let expanded_part = fnameescape(expand(part))
        "let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
     "endif
  "endfor
  "botright new
  "setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  ""call setline(1, 'You entered:    ' . a:cmdline)
  ""call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  ""call setline(3,substitute(getline(2),'.','=','g'))
  "execute '$read !'. expanded_cmdline
  "normal ggdd
  "setlocal nomodifiable
  ""1
"endfunction

"tnoremap <Esc> <C-\><C-n>
"tnoremap <c-c> <C-\><C-n>

augroup fif
  au!
  au filetype fif IndentLinesDisable
  au filetype fif DisableWhitespace
augroup END

