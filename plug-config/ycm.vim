let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

let g:ycm_warning_symbol = 'Δ'

let s:ycm_hover_popup = 1
function! s:ShowDataPopup( response ) abort
  if response == ''
    return
  endif

  call popup_hide( s:ycm_hover_popup )
  let s:ycm_hover_popup = popup_atcursor( balloon_split( response ), {} )
endfunction

function! s:GetData() abort
  call youcompleteme#GetCommandResponseAsync(
    \ function( 's:ShowDataPopup' ),
    \ 'GetDoc' )
endfunction

autocommand CursorHold * call s:GetData()
nmap <leader>D <plug>(YCMHover)
