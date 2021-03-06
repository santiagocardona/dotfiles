let g:airline_theme           = 'easycolors'
let g:airline_powerline_fonts = 1

let g:airline_mode_map = {
    \ '__'     : '',
    \ 'c'      : '',
    \ 'i'      : '',
    \ 'ic'     : '',
    \ 'ix'     : '',
    \ 'n'      : '',
    \ 'multi'  : '',
    \ 'ni'     : '',
    \ 'no'     : '',
    \ 'R'      : '',
    \ 'Rv'     : '',
    \ 's'      : '',
    \ 'S'      : '',
    \ ''     : '',
    \ 't'      : '',
    \ 'v'      : '',
    \ 'V'      : '',
    \ ''     : '',
    \ }

let g:airline_skip_empty_sections              = 1
"let g:airline_section_b                        = ''
let g:airline_section_c                        = '%#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_section_y                        = ''
"let g:airline_section_z                        = '%L Line(s) %{g:airline_symbols.linenr} Column %3v '
let g:airline_section_z                        = 'line %l/%L %{g:airline_symbols.linenr}col %v '
let g:airline#parts#ffenc#skip_expected_string = 'utf-8[unix]'
let g:airline#extensions#wordcount#enabled     = 0
let g:airline#extensions#tagbar#enabled        = 0
let g:airline#extensions#whitespace#enabled    = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'no_path'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '⎸'
let g:airline#extensions#tabline#buf_label_first = 1
let g:airline#extensions#tabline#buffers_label = '.'
let g:airline#extensions#tabline#right_margin = 44

" settings for tabs
"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_count = 0

let g:airline_symbols = {'space': ' ', 'paste': 'PASTE', 'maxlinenr': ' ', 'dirty': '', 'crypt': '🔒',
                        \'linenr': '☰ ', 'readonly': '', 'spell': 'SPELL', 'modified': '*',
                        \'notexists': '+', 'keymap': 'Keymap:', 'ellipsis': '••• ', 'branch': '', 'whitespace': '☲'}

let g:airline_filetype_overrides = {
    \ 'defx':  [' Files', '%{b:defx.paths[0]}'],
    \ 'vista':  [' Outline', ''],
    \ 'fugitive':  [' Git', ''],
    \ 'phpunit':  [' Unit test', ''],
    \ 'startify':  ['', ''],
\ }
