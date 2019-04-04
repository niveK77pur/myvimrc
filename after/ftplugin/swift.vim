setl tabstop=4

setl def=func


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                                  Mappings
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

inoremap <LocalLeader>s self.
inoremap <LocalLeader>=S <ESC>:call PutSelf()<CR>
nnoremap <LocalLeader>=S :call PutSelf()<CR>
vnoremap <LocalLeader>=S v:call PutSelfSelection()<CR>


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                                  Functions
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

function! PutSelf()
        s#\(\w\+\)#self.\1 = \1#
endfunction

function! PutSelfSelection()
    let line_range = [getpos("'<")[1], getpos("'>")[1]]
    exec line_range[0] . "," . line_range[1] . "s#\\(\\w\\+\\)#self.\\1 = \\1#"
endfunction
