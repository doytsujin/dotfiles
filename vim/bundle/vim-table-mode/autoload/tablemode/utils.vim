" ==============================  Header ======================================
" File:          autoload/tablemode/utils.vim
" Description:   Table mode for vim for creating neat tables.
" Author:        Dhruva Sagar <http://dhruvasagar.com/>
" License:       MIT (http://www.opensource.org/licenses/MIT)
" Website:       https://github.com/dhruvasagar/vim-table-mode
" Note:          This plugin was heavily inspired by the 'CucumberTables.vim'
"                (https://gist.github.com/tpope/287147) plugin by Tim Pope.
"
" Copyright Notice:
"                Permission is hereby granted to use and distribute this code,
"                with or without modifications, provided that this copyright
"                notice is copied with it. Like anything else that's free,
"                table-mode.vim is provided *as is* and comes with no warranty
"                of any kind, either expressed or implied. In no event will
"                the copyright holder be liable for any damamges resulting
"                from the use of this software.
" =============================================================================

" Private Functions {{{1

" Public Functions {{{1
function! tablemode#utils#sid() "{{{2
  return maparg('<sid>', 'n')
endfunction
nnoremap <sid> <sid>

function! tablemode#utils#scope() "{{{2
  return s:
endfunction

function! tablemode#utils#throw(string) abort "{{{2
  let v:errmsg = 'table-mode: ' . a:string
  throw v:errmsg
endfunction

function! tablemode#utils#line(row) "{{{2
  if type(a:row) == type('')
    return line(a:row)
  else
    return a:row
  endif
endfunction

function! tablemode#utils#strip(string) "{{{2
  return matchstr(a:string, '^\s*\zs.\{-}\ze\s*$')
endfunction

" function! tablemode#utils#strlen {{{2
" To count multibyte characters accurately
function! tablemode#utils#strlen(text)
  return strlen(substitute(a:text, '.', 'x', 'g'))
endfunction
