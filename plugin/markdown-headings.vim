if !exists('g:markdown_headings_map_keys')
  let g:markdown_headings_map_keys = 1
endif

function! s:markdownHeading(level)
    
    if a:level == 1
        normal! yypVr=
    elseif a:level == 2
        normal! yypVr-
    elseif a:level == 3
        normal! I### A
    else
        normal! I###
    endif

endfunction

nnoremap <silent> <Plug>MarkdownHeadingH1 :call markdownHeading(1)<CR>
nnoremap <silent> <Plug>MarkdownHeadingH2 :call markdownHeading(2)<CR>
nnoremap <silent> <Plug>MarkdownHeadingH3 :call markdownHeading(3)<CR>

if g:markdown_headings_map_keys
  nmap mdh1 <Plug>MarkdownHeadingsH1
  nmap mdh2 <Plug>MarkdownHeadingsH2
  nmap mdh3 <Plug>MarkdownHeadingsH3
endif
