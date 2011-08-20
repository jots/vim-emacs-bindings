" Simple navigation and editing key bindings from emacs, for Vim.
" Inspired by a much more comprehensive plugin: Vimacs, by Andre Pang.

" TODO
"   normal and insert mode:
"     - when cursor is on first non-blank character, <C-a> should go to beginning of line
"   insert mode
"     - when line is blank, <C-k> should delete entire line
"   command mode:
"     - <C-k> and <M-d> should not open command window

" on macvim, use option as meta key
if has("gui_macvim")
  set macmeta
endif

" normal mode
"  - navigation
map <C-p> gk
map <C-n> gj
map <C-b> h
map <C-f> l
map <C-a> ^
map <C-e> $
map <M-b> b
map <M-f> e
map <M-a> {
map <M-e> }

" insert mode
"  - navigation
imap <C-p> <Up>
imap <C-n> <Down>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a> <C-o>^
imap <C-e> <End>
imap <M-b> <C-o>b
imap <M-f> <C-o>e<Right>
imap <M-a> <C-o>{
imap <M-e> <C-o>}
"  - editing
imap <C-d> <Del>
imap <C-h> <BS>
imap <M-d> <C-o>dw
imap <M-h> <C-w>
imap <C-k> <C-o>D

" command line mode
"  - navigation
cmap <C-p> <Up>
cmap <C-n> <Down>
cmap <C-b> <Left>
cmap <C-f> <Right>
cmap <C-a> <Home>
cmap <C-e> <End>
cmap <M-f> <S-Right>
cmap <M-b> <S-Left>
cmap <M-a> <Home>
cmap <M-e> <End>
"  - editing
cmap <M-h> <C-w>
cmap <M-d> <C-f>dwl<C-c>
cmap <C-k> <C-f>D<C-c><End>

" in Command-T window
let g:CommandTAcceptSelectionTabMap='<C-CR>'
let g:CommandTBackspaceMap='<C-h>'
let g:CommandTDeleteMap='<C-d>'
let g:CommandTCursorLeftMap='<C-b>'
let g:CommandTCursorRightMap='<C-f>'

