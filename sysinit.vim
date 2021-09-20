" configuracion de nvim
source $VIM\vimConfig.vim

" source para el instalador de pluggins Plug
source $VIM\plugConfig.vim

" configuracion de las keymaps
source $VIM\keyMaps.vim

" Coc status
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

set laststatus=2  " always display the status line
" kite config
let g:kite_supported_languages = ['python', 'javascript']
let g:kite_completions=0
let g:kite_auto_complete=0
let g:kite_log=1
" trigger completion
"autocmd FileType python let b:coc_suggest_disable = 1
"autocmd FileType javascript let b:coc_suggest_disable = 1
autocmd FileType scss setl iskeyword+=@-@

" NerdTree config
let NERDTreeQuitOnOpen=1

" UltiSnips
let g:UltiSnipsExpandTrigger = "<Shift-tab>"
