" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['.'] = [ ':e $myvimrc'                , 'open init' ]
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }
let g:which_key_map.d = {
      \ 'name' : '+debug',
      \ 'b' : ['<plug>VimspectorToggleBreakpoint'               , 'breakpoint']             ,
      \ 'B' : ['<plug>VimspectorToggleConditionalBreakpoint'    , 'conditional breakpoint'] ,
      \ 'c' : ['<plug>VimspectorRunToCursor'                    , 'run to cursor']          ,
      \ 'd' : ['<plug>VimspectorContinue'                       , 'continute']              ,
      \ 'f' : ['<plug>VimspectorAddFunctionBreakpoint'          , 'function breakpoint']    ,
      \ 'o' : ['<plug>VimspectorStepOver'                       , 'step over']              ,
      \ 'O' : ['<plug>VimspectorStepOut'                        , 'step out']               ,
      \ 'i' : ['<plug>VimspectorStepInto'                       , 'step into']              ,
      \ 'p' : ['<plug>VimspectorPause'                          , 'pause']                  ,
      \ 'r' : ['<plug>VimspectorRestart'                        , 'restart']                ,
      \ 's' : ['<plug>VimspectorStop'                           , 'stop']                   ,
      \}
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map.l = {
      \ 'name' : '+lsp',
      \ 'D' : ['<plug>(coc-declaration)'              , 'declaration']      ,
      \ 'd' : ['<Plug>(coc-definition)'               , 'definition']       ,
      \ 'f' : ['<Plug>(coc-format)'                   , 'format']           ,
      \ 'I' : [':CocList diagnostic'                  , 'diagnostic']       ,
      \ 'i' : ['<Plug>(coc-implementation)'           , 'implementation']   ,
      \ 'l' : ['<Plug>(coc-codelens-action)'          , 'code lens']        ,
      \ 'N' : ['<Plug>(coc-diagnostic-error)'         , 'next error']       ,
      \ 'n' : ['<Plug>(coc-diagnostic-next)'          , 'next diagnostic']  ,
      \ 'O' : [':CocList outline'                     , 'search outline']   ,
      \ 'q' : ['<Plug>(coc-fix-current)'              , 'implementation']   ,
      \ 'R' : ['<Plug>(coc-rename)'                   , 'rename']           ,
      \ 'r' : ['<Plug>(coc-references)'               , 'references']       ,
      \ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
      \ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
      \ 't' : ['<Plug>(coc-type-definition)'          , 'type definition']  ,
      \ 'U' : [':CocUpdate'                           , 'update CoC']       ,
      \ 'Z' : [':CocEnable'                           , 'enable CoC']       ,
      \ 'z' : [':CocDisable'                          , 'Disable CoC']      ,
      \ }
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
