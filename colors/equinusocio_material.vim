" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: Apache-2.0
" ------------------------------------------------------------------------

" vim color file
" equinusocio_material

set background=dark

if has('nvim')
  highlight! clear
  syntax reset
else
  if version > 580
    highlight! clear
    if exists('syntax_on')
      syntax reset
    endif
  endif
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
  finish
endif

let g:colors_name = "equinusocio_material"
set background=dark

if get(g:, 'equinusocio_material_darker', 0) == 1
  let s:black_br = '#545454'
  let s:background = '#212121'
  let s:cursor_guide = '#171717'
  let s:selection = '#616161'
  let s:indent_line = '#424242'
else
  let s:black_br = '#546e7a'
  let s:background = '#263238'
  let s:cursor_guide = '#1b2327'
  let s:selection = '#667278'
  let s:indent_line = '#37474f'
endif

if get(g:, 'equinusocio_material_hide_vertsplit', 0) == 1
  let s:cursor_guide = s:background
endif

let s:black = '#000000'
let s:red = '#ff5370'
let s:green = '#c3e88d'
let s:yellow = '#ffcb6b'
let s:orange = '#f78c6c'
let s:blue = '#82aaff'
let s:magenta = '#c792ea'
let s:cyan = '#89ddff'
let s:white = '#eeffff'
" ---------------------------
let s:foreground = '#eeffff'
let s:caret = '#ffcc00'
" let s:comment = '#b3ccd6'
" let s:errorline = '#1b0000'
" ---------------------------
let s:pure_black = '#000000'
" ---------------------------
let s:none = 'NONE'
let s:underline = 'underline'
let s:undercurl = 'undercurl'
let s:bold = 'bold'
let s:inverse = 'inverse'


function! s:HL(group, fg, bg, attr)
  execute 'highlight! ' . a:group . ' ctermfg=NONE'
  execute 'highlight! ' . a:group . ' ctermbg=NONE'
  execute 'highlight! ' . a:group . ' cterm=NONE'

  if !empty(a:fg)
    execute 'highlight! ' . a:group . ' guifg=' . a:fg
  else
    execute 'highlight! ' . a:group . ' guifg=NONE'
  endif

  if !empty(a:bg)
    execute 'highlight! ' . a:group . ' guibg=' . a:bg
  else
    execute 'highlight! ' . a:group . ' guibg=NONE'
  endif

  if !empty(a:attr)
    execute 'highlight! ' . a:group . ' gui=' . a:attr
  else
    execute 'highlight! ' . a:group . ' gui=NONE'
  endif
endfunction


" ====================================================
" editor color scheme
" ----------------------------------------------------
call s:HL('ColorColumn', s:none, s:cursor_guide, s:none)
call s:HL('Conceal', s:blue, s:none, s:none)
call s:HL('Cursor', s:black, s:caret, s:none)
call s:HL('CursorIM', s:black, s:caret, s:none)
call s:HL('CursorColumn', s:none, s:cursor_guide, s:none)
call s:HL('CursorLine', s:none, s:cursor_guide, s:none)
" ----------------------------------------------------
call s:HL('Directory', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('DiffAdd', s:green, s:none, s:none)
call s:HL('DiffChange', s:yellow, s:none, s:none)
call s:HL('DiffDelete', s:red, s:none, s:none)
call s:HL('DiffText', s:magenta, s:none, s:none)
" ----------------------------------------------------
call s:HL('EndOfBuffer', s:background, s:none, s:none)
" ----------------------------------------------------
call s:HL('ErrorMsg', s:red, s:none, s:none)
" ----------------------------------------------------
call s:HL('VertSplit', s:cursor_guide, s:none, s:none)
" ----------------------------------------------------
call s:HL('Folded', s:foreground, s:black_br, s:none)
call s:HL('FoldColumn', s:foreground, s:none, s:none)
" ----------------------------------------------------
call s:HL('SignColumn', s:none, s:none, s:none)
call s:HL('IncSearch', s:black, s:magenta, s:none)
call s:HL('LineNr', s:black_br, s:none, s:none)
call s:HL('CursorLineNr', s:foreground, s:none, s:none)
call s:HL('MatchParen', s:black, s:red, s:none)
" ----------------------------------------------------
call s:HL('ModeMsg', s:foreground, s:none, s:none)
call s:HL('MoreMsg', s:red, s:none, s:none)
call s:HL('NonText', s:indent_line, s:none, s:none)
call s:HL('Normal', s:foreground, s:background, s:none) " base color
" ----------------------------------------------------
call s:HL('Pmenu', s:foreground, s:black_br, s:none)
call s:HL('PmenuSel', s:cyan, s:black, s:none)
call s:HL('PmenuSbar', s:none, s:black_br, s:none)
call s:HL('PmenuThumb', s:none, s:foreground, s:none)
" ----------------------------------------------------
call s:HL('Question', s:red, s:none, s:none)
call s:HL('QuickFixLine', s:foreground, s:background, s:none) " link it to normal
call s:HL('Search', s:black, s:magenta, s:none)
call s:HL('SpecialKey', s:black_br, s:none, s:none)
" ----------------------------------------------------
" call s:HL('SpellBad', s:none, s:errorline, s:none)
" call s:HL('SpellCap', s:none, s:errorline, s:none)
" call s:HL('SpellLocal', s:none, s:errorline, s:none)
" call s:HL('SpellRare', s:none, s:errorline, s:none)
call s:HL('SpellBad', s:none, s:none, s:underline)
call s:HL('SpellCap', s:none, s:none, s:underline)
call s:HL('SpellLocal', s:none, s:none, s:underline)
call s:HL('SpellRare', s:none, s:none, s:underline)
" ----------------------------------------------------
call s:HL('StatusLine', s:foreground, s:none, s:none)
call s:HL('StatusLineNC', s:black_br, s:none, s:none)
call s:HL('StatusLineTerm', s:foreground, s:none, s:none)
call s:HL('StatusLineTermNC', s:black_br, s:none, s:none)
" ----------------------------------------------------
call s:HL('TabLine', s:foreground, s:none, s:none)
call s:HL('TabLineFill', s:none, s:none, s:none)
call s:HL('TabLineSel', s:foreground, s:black_br, s:none)
call s:HL('Terminal', s:foreground, s:background, s:none)
call s:HL('Title', s:red, s:none, s:none)
call s:HL('Visual', s:foreground, s:selection, s:none)
call s:HL('VisualNOS', s:foreground, s:selection, s:none)
call s:HL('WarningMsg', s:red, s:none, s:none)
call s:HL('WildMenu', s:black, s:cyan, s:none)
" ====================================================


" ====================================================
" standard syntax
" ----------------------------------------------------
call s:HL('Comment', s:black_br, s:none, s:none)
" ----------------------------------------------------
call s:HL('Constant', s:foreground, s:none, s:none)
call s:HL('String', s:green, s:none, s:none)
call s:HL('Number', s:orange, s:none, s:none)
call s:HL('Boolean', s:orange, s:none, s:none)
call s:HL('Float', s:orange, s:none, s:none)
" ----------------------------------------------------
call s:HL('Identifier', s:yellow, s:none, s:none)
call s:HL('Function', s:blue, s:none, s:none)
" ----------------------------------------------------
call s:HL('Statement', s:magenta, s:none, s:none)
call s:HL('Conditional', s:cyan, s:none, s:none)
call s:HL('Repeat', s:cyan, s:none, s:none)
call s:HL('Operator', s:magenta, s:none, s:none)
call s:HL('Keyword', s:magenta, s:none, s:none)
call s:HL('Exception', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('PreProc', s:cyan, s:none, s:none)
call s:HL('Include', s:cyan, s:none, s:none)
call s:HL('Define', s:blue, s:none, s:none)
call s:HL('Macro', s:blue, s:none, s:none)
call s:HL('PreCondit', s:yellow, s:none, s:none)
" ----------------------------------------------------
call s:HL('Type', s:yellow, s:none, s:none)
call s:HL('StorageClass', s:yellow, s:none, s:none)
call s:HL('Structure', s:magenta, s:none, s:none)
call s:HL('Typedef', s:yellow, s:none, s:none)
" ----------------------------------------------------
call s:HL('Special', s:cyan, s:none, s:none)
" ----------------------------------------------------
call s:HL('Underlined', s:none, s:none, s:underline)
call s:HL('Ignore', s:none, s:none, s:none)
call s:HL('Error', s:red, s:none, s:none)
call s:HL('Todo', s:orange, s:none, s:none)
" ====================================================


" ====================================================
" ale
" ----------------------------------------------------
call s:HL('ALEError', s:none, s:none, s:underline)
call s:HL('ALEWarning', s:none, s:none, s:underline)
call s:HL('ALEInfo', s:none, s:none, s:underline)

call s:HL('ALEErrorSign', s:red, s:none, s:none)
call s:HL('ALEWarningSign', s:yellow, s:none, s:none)
call s:HL('ALEInfoSign', s:cyan, s:none, s:none)
" ====================================================


" ====================================================
" echodoc
" ----------------------------------------------------
call s:HL('EchoDocFloat', s:foreground, s:black, s:none)
call s:HL('EchoDocPopup', s:foreground, s:black, s:none)
" ====================================================


" ====================================================
" coc.nvim
" ----------------------------------------------------
call s:HL('CocErrorSign', s:red, s:none, s:none)
call s:HL('CocWarningSign', s:yellow, s:none, s:none)
call s:HL('CocInfoSign', s:orange, s:none, s:none)
call s:HL('CocHintSign', s:cyan, s:none, s:none)

call s:HL('CocFloating', s:foreground, s:black, s:none)
call s:HL('CocErrorFloat', s:red, s:black, s:none)
call s:HL('CocWarningFloat', s:yellow, s:black, s:none)
call s:HL('CocInfoFloat', s:orange, s:black, s:none)
call s:HL('CocHintFloat', s:cyan, s:black, s:none)

" --- not found in coc.nvim doc ---
" call s:HL('CocDiagnosticsError', s:red, s:none, s:none)
" call s:HL('CocDiagnosticsWarning', s:yellow, s:none, s:none)
" call s:HL('CocDiagnosticsInfo', s:yellow, s:none, s:none)
" call s:HL('CocDiagnosticsHint', s:cyan, s:none, s:none)

call s:HL('CocErrorHighlight', s:none, s:none, s:underline)
call s:HL('CocWarningHighlight', s:none, s:none, s:underline)
call s:HL('CocInfoHighlight', s:none, s:none, s:underline)
call s:HL('CocHintHighlight', s:none, s:none, s:underline)

" ----------- gruvbox coc.nvim ---------
" hi! link CocErrorSign GruvboxRedSign
" hi! link CocWarningSign GruvboxOrangeSign
" hi! link CocInfoSign GruvboxYellowSign
" hi! link CocHintSign GruvboxBlueSign
" hi! link CocErrorFloat GruvboxRed
" hi! link CocWarningFloat GruvboxOrange
" hi! link CocInfoFloat GruvboxYellow
" hi! link CocHintFloat GruvboxBlue
" hi! link CocDiagnosticsError GruvboxRed
" hi! link CocDiagnosticsWarning GruvboxOrange
" hi! link CocDiagnosticsInfo GruvboxYellow
" hi! link CocDiagnosticsHint GruvboxBlue

" hi! link CocSelectedText GruvboxRed
" hi! link CocCodeLens GruvboxGray

" call s:HL('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
" call s:HL('CocWarningHighlight', s:none, s:none, s:undercurl, s:orange)
" call s:HL('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
" call s:HL('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)
" ====================================================

" ====================================================
" vim-lsp
" ----------------------------------------------------
call s:HL('LspErrorText', s:red, s:none, s:none)
call s:HL('LspWarningText', s:yellow, s:none, s:none)
call s:HL('LspInformationText', s:orange, s:none, s:none)
call s:HL('LspHintText', s:cyan, s:none, s:none)

call s:HL('LspErrorHighlight', s:none, s:none, s:underline)
call s:HL('LspWarningHighlight', s:none, s:none, s:underline)
call s:HL('LspInformationHighlight', s:none, s:none, s:underline)
call s:HL('LspHintHighlight', s:none, s:none, s:underline)
" ====================================================

" ====================================================
" parentheses
" ----------------------------------------------------
augroup equinusocio_material_hi_parentheses
  autocmd!
  autocmd Syntax * syntax match MaterialThemeParens '[(){}\[\]]'
augroup END
call s:HL('MaterialThemeParens', s:cyan, s:none, s:none)
" rainbow
if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = [s:cyan, s:yellow, s:red]
endif
" ====================================================

" ====================================================
" semshi
" ----------------------------------------------------
if has('nvim')
  call s:HL('semshiLocal', s:orange, s:none, s:none)
  call s:HL('semshiGlobal', s:yellow, s:none, s:none)
  call s:HL('semshiImported', s:yellow, s:none, s:none)
  call s:HL('semshiParameter', s:red, s:none, s:none)
  call s:HL('semshiParameterUnused', s:cyan, s:none, s:underline)
  call s:HL('semshiFree', s:yellow, s:none, s:none)
  call s:HL('semshiBuiltin', s:magenta, s:none, s:none)
  call s:HL('semshiAttribute', s:green, s:none, s:none)
  call s:HL('semshiSelf', s:red, s:none, s:none)
  call s:HL('semshiUnresolved', s:yellow, s:none, s:underline)
  call s:HL('semshiSelected', s:pure_black, s:yellow, s:none)
  call s:HL('semshiErrorSign', s:pure_black, s:red, s:none)
  call s:HL('semshiErrorChar', s:pure_black, s:red, s:none)
endif
" ====================================================

" ====================================================
" vim8/neovim buildin terminal colors
" ----------------------------------------------------
if has('nvim')
  let g:terminal_color_0 = s:black
  let g:terminal_color_1 = s:red
  let g:terminal_color_2 = s:green
  let g:terminal_color_3 = s:yellow
  let g:terminal_color_4 = s:blue
  let g:terminal_color_5 = s:magenta
  let g:terminal_color_6 = s:cyan
  let g:terminal_color_7 = s:white
  let g:terminal_color_8 = s:black_br
  let g:terminal_color_9 = s:red
  let g:terminal_color_10 = s:green
  let g:terminal_color_11 = s:yellow
  let g:terminal_color_12 = s:blue
  let g:terminal_color_13 = s:magenta
  let g:terminal_color_14 = s:cyan
  let g:terminal_color_15 = s:white
elseif exists('*term_setansicolors')
  let g:terminal_ansi_colors = [
    \ s:black,
    \ s:red,
    \ s:green,
    \ s:yellow,
    \ s:blue,
    \ s:magenta,
    \ s:cyan,
    \ s:white,
    \ s:black_br,
    \ s:red,
    \ s:green,
    \ s:yellow,
    \ s:blue,
    \ s:magenta,
    \ s:cyan,
    \ s:white,
    \ ]
endif
" ====================================================
