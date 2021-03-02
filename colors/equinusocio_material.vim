" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: MIT
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

let s:colors = equinusocio_material#get_colors()

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
call s:HL('ColorColumn', s:colors.none, s:colors.cursor_guide, s:colors.none)
call s:HL('Conceal', s:colors.blue, s:colors.none, s:colors.none)
call s:HL('Cursor', s:colors.black, s:colors.caret, s:colors.none)
call s:HL('CursorIM', s:colors.black, s:colors.caret, s:colors.none)
call s:HL('CursorColumn', s:colors.none, s:colors.cursor_guide, s:colors.none)
call s:HL('CursorLine', s:colors.none, s:colors.cursor_guide, s:colors.none)
" ----------------------------------------------------
call s:HL('Directory', s:colors.cyan, s:colors.none, s:colors.none)
" ----------------------------------------------------
" call s:HL('DiffAdd', s:colors.green, s:colors.none, s:colors.none)
" call s:HL('DiffChange', s:colors.yellow, s:colors.none, s:colors.none)
" call s:HL('DiffDelete', s:colors.red, s:colors.none, s:colors.none)
" call s:HL('DiffText', s:colors.magenta, s:colors.none, s:colors.none)
call s:HL('DiffAdd', s:colors.black, s:colors.green, s:colors.none)
call s:HL('DiffChange', s:colors.black, s:colors.yellow, s:colors.none)
call s:HL('DiffDelete', s:colors.black, s:colors.red, s:colors.none)
call s:HL('DiffText', s:colors.black, s:colors.magenta, s:colors.none)
" ----------------------------------------------------
call s:HL('EndOfBuffer', s:colors.background, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('ErrorMsg', s:colors.red, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('VertSplit', s:colors.vertsplit, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Folded', s:colors.foreground, s:colors.black_br, s:colors.none)
call s:HL('FoldColumn', s:colors.foreground, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('SignColumn', s:colors.none, s:colors.none, s:colors.none)
call s:HL('IncSearch', s:colors.black, s:colors.magenta, s:colors.none)
call s:HL('LineNr', s:colors.black_br, s:colors.none, s:colors.none)
call s:HL('CursorLineNr', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('MatchParen', s:colors.black, s:colors.red, s:colors.none)
" ----------------------------------------------------
call s:HL('ModeMsg', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('MoreMsg', s:colors.red, s:colors.none, s:colors.none)
call s:HL('NonText', s:colors.indent_line, s:colors.none, s:colors.none)
call s:HL('Normal', s:colors.foreground, s:colors.background, s:colors.none) " base color
" ----------------------------------------------------
call s:HL('Pmenu', s:colors.foreground, s:colors.menu_bg, s:colors.none)
call s:HL('PmenuSel', s:colors.cyan, s:colors.black, s:colors.none)
call s:HL('PmenuSbar', s:colors.none, s:colors.menu_bg, s:colors.none)
call s:HL('PmenuThumb', s:colors.none, s:colors.foreground, s:colors.none)
" ----------------------------------------------------
call s:HL('Question', s:colors.red, s:colors.none, s:colors.none)
call s:HL('QuickFixLine', s:colors.foreground, s:colors.selection, s:colors.none)
call s:HL('Search', s:colors.black, s:colors.magenta, s:colors.none)
call s:HL('SpecialKey', s:colors.black_br, s:colors.none, s:colors.none)
" ----------------------------------------------------
" call s:HL('SpellBad', s:colors.none, s:colors.errorline, s:colors.none)
" call s:HL('SpellCap', s:colors.none, s:colors.errorline, s:colors.none)
" call s:HL('SpellLocal', s:colors.none, s:colors.errorline, s:colors.none)
" call s:HL('SpellRare', s:colors.none, s:colors.errorline, s:colors.none)
call s:HL('SpellBad', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellCap', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellLocal', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('SpellRare', s:colors.none, s:colors.none, s:colors.underline)
" ----------------------------------------------------
call s:HL('StatusLine', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('StatusLineNC', s:colors.black_br, s:colors.none, s:colors.none)
call s:HL('StatusLineTerm', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('StatusLineTermNC', s:colors.black_br, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('TabLine', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('TabLineFill', s:colors.none, s:colors.none, s:colors.none)
call s:HL('TabLineSel', s:colors.foreground, s:colors.black_br, s:colors.none)
call s:HL('Terminal', s:colors.foreground, s:colors.background, s:colors.none)
call s:HL('Title', s:colors.red, s:colors.none, s:colors.none)
call s:HL('Visual', s:colors.foreground, s:colors.selection, s:colors.none)
call s:HL('VisualNOS', s:colors.foreground, s:colors.selection, s:colors.none)
call s:HL('WarningMsg', s:colors.red, s:colors.none, s:colors.none)
call s:HL('WildMenu', s:colors.black, s:colors.cyan, s:colors.none)
" ====================================================


" ====================================================
" standard syntax
" ----------------------------------------------------
call s:HL('Comment', s:colors.comment, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Constant', s:colors.foreground, s:colors.none, s:colors.none)
call s:HL('String', s:colors.green, s:colors.none, s:colors.none)
call s:HL('Character', s:colors.green, s:colors.none, s:colors.none)
call s:HL('Number', s:colors.orange, s:colors.none, s:colors.none)
call s:HL('Boolean', s:colors.orange, s:colors.none, s:colors.none)
call s:HL('Float', s:colors.orange, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Identifier', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('Function', s:colors.blue, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Statement', s:colors.magenta, s:colors.none, s:colors.none)
call s:HL('Conditional', s:colors.cyan, s:colors.none, s:colors.none)
call s:HL('Repeat', s:colors.cyan, s:colors.none, s:colors.none)
call s:HL('Operator', s:colors.magenta, s:colors.none, s:colors.none)
call s:HL('Keyword', s:colors.magenta, s:colors.none, s:colors.none)
call s:HL('Exception', s:colors.cyan, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('PreProc', s:colors.cyan, s:colors.none, s:colors.none)
call s:HL('Include', s:colors.cyan, s:colors.none, s:colors.none)
call s:HL('Define', s:colors.blue, s:colors.none, s:colors.none)
call s:HL('Macro', s:colors.blue, s:colors.none, s:colors.none)
call s:HL('PreCondit', s:colors.yellow, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Type', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('StorageClass', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('Structure', s:colors.magenta, s:colors.none, s:colors.none)
call s:HL('Typedef', s:colors.yellow, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Special', s:colors.cyan, s:colors.none, s:colors.none)
" ----------------------------------------------------
call s:HL('Underlined', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('Ignore', s:colors.none, s:colors.none, s:colors.none)
call s:HL('Error', s:colors.red, s:colors.none, s:colors.none)
call s:HL('Todo', s:colors.orange, s:colors.none, s:colors.none)
" ====================================================


" ====================================================
" ale
" ----------------------------------------------------
call s:HL('ALEError', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEWarning', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('ALEInfo', s:colors.none, s:colors.none, s:colors.underline)

call s:HL('ALEErrorSign', s:colors.red, s:colors.none, s:colors.none)
call s:HL('ALEWarningSign', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('ALEInfoSign', s:colors.cyan, s:colors.none, s:colors.none)
" ====================================================


" ====================================================
" echodoc
" ----------------------------------------------------
call s:HL('EchoDocFloat', s:colors.foreground, s:colors.float_bg, s:colors.none)
call s:HL('EchoDocPopup', s:colors.foreground, s:colors.float_bg, s:colors.none)
" ====================================================


" ====================================================
" coc.nvim
" ----------------------------------------------------
call s:HL('CocErrorSign', s:colors.red, s:colors.none, s:colors.none)
call s:HL('CocWarningSign', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('CocInfoSign', s:colors.orange, s:colors.none, s:colors.none)
call s:HL('CocHintSign', s:colors.cyan, s:colors.none, s:colors.none)

call s:HL('CocFloating', s:colors.foreground, s:colors.float_bg, s:colors.none)
call s:HL('CocErrorFloat', s:colors.red, s:colors.float_bg, s:colors.none)
call s:HL('CocWarningFloat', s:colors.yellow, s:colors.float_bg, s:colors.none)
call s:HL('CocInfoFloat', s:colors.orange, s:colors.float_bg, s:colors.none)
call s:HL('CocHintFloat', s:colors.cyan, s:colors.float_bg, s:colors.none)

" --- not found in coc.nvim doc ---
" call s:HL('CocDiagnosticsError', s:colors.red, s:colors.none, s:colors.none)
" call s:HL('CocDiagnosticsWarning', s:colors.yellow, s:colors.none, s:colors.none)
" call s:HL('CocDiagnosticsInfo', s:colors.yellow, s:colors.none, s:colors.none)
" call s:HL('CocDiagnosticsHint', s:colors.cyan, s:colors.none, s:colors.none)

call s:HL('CocErrorHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocWarningHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocInfoHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('CocHintHighlight', s:colors.none, s:colors.none, s:colors.underline)

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

" call s:HL('CocErrorHighlight', s:colors.none, s:colors.none, s:colors.undercurl, s:colors.red)
" call s:HL('CocWarningHighlight', s:colors.none, s:colors.none, s:colors.undercurl, s:colors.orange)
" call s:HL('CocInfoHighlight', s:colors.none, s:colors.none, s:colors.undercurl, s:colors.yellow)
" call s:HL('CocHintHighlight', s:colors.none, s:colors.none, s:colors.undercurl, s:colors.blue)
" ====================================================

" ====================================================
" vim-lsp
" ----------------------------------------------------
call s:HL('LspErrorText', s:colors.red, s:colors.none, s:colors.none)
call s:HL('LspWarningText', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('LspInformationText', s:colors.orange, s:colors.none, s:colors.none)
call s:HL('LspHintText', s:colors.cyan, s:colors.none, s:colors.none)

call s:HL('LspErrorHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspWarningHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspInformationHighlight', s:colors.none, s:colors.none, s:colors.underline)
call s:HL('LspHintHighlight', s:colors.none, s:colors.none, s:colors.underline)
" ====================================================

" ====================================================
" parentheses
" ----------------------------------------------------
if get(g:, 'equinusocio_material_bracket_improved', 0) == 1
  augroup equinusocio_material_hi_parentheses
    autocmd!
    autocmd Syntax * syntax match MaterialThemeParens '[(){}\[\]]'
  augroup END
  call s:HL('MaterialThemeParens', s:colors.cyan, s:colors.none, s:colors.none)
endif
" rainbow
if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = [s:colors.cyan, s:colors.yellow, s:colors.red]
endif
" ====================================================

" ====================================================
" semshi
" ----------------------------------------------------
if has('nvim')
  call s:HL('semshiLocal', s:colors.orange, s:colors.none, s:colors.none)
  call s:HL('semshiGlobal', s:colors.yellow, s:colors.none, s:colors.none)
  call s:HL('semshiImported', s:colors.yellow, s:colors.none, s:colors.none)
  call s:HL('semshiParameter', s:colors.red, s:colors.none, s:colors.none)
  call s:HL('semshiParameterUnused', s:colors.cyan, s:colors.none, s:colors.underline)
  call s:HL('semshiFree', s:colors.yellow, s:colors.none, s:colors.none)
  call s:HL('semshiBuiltin', s:colors.magenta, s:colors.none, s:colors.none)
  call s:HL('semshiAttribute', s:colors.green, s:colors.none, s:colors.none)
  call s:HL('semshiSelf', s:colors.red, s:colors.none, s:colors.none)
  call s:HL('semshiUnresolved', s:colors.yellow, s:colors.none, s:colors.underline)
  call s:HL('semshiSelected', s:colors.pure_black, s:colors.yellow, s:colors.none)
  call s:HL('semshiErrorSign', s:colors.pure_black, s:colors.red, s:colors.none)
  call s:HL('semshiErrorChar', s:colors.pure_black, s:colors.red, s:colors.none)
endif
" ====================================================

" ====================================================
" indentline
" ----------------------------------------------------
if !exists('g:indentLine_char_list')
  let g:indentLine_char_list = ['│']
endif
if !exists('g:indentLine_color_gui')
  let g:indentLine_color_gui = s:colors.selection
endif
" if !exists('g:indentLine_enabled')
"   let g:indentLine_enabled = 1
" endif
" ====================================================

" ====================================================
" LanguageClient-neovim
" ----------------------------------------------------
call s:HL('LanguageClientHover', s:colors.none, s:colors.float_bg, s:colors.none)
if !exists('g:LanguageClient_floatingHoverHighlight')
  let g:LanguageClient_floatingHoverHighlight = 'Normal:LanguageClientHover'
endif
" ====================================================

" ====================================================
" vim-signify
" ----------------------------------------------------
call s:HL('SignifySignAdd', s:colors.green, s:colors.none, s:colors.none)
call s:HL('SignifySignChange', s:colors.yellow, s:colors.none, s:colors.none)
call s:HL('SignifySignDelete', s:colors.red, s:colors.none, s:colors.none)
call s:HL('SignifySignDeleteFirstLine', s:colors.red, s:colors.none, s:colors.none)
" ====================================================

" ====================================================
" vim8/neovim buildin terminal colors
" ----------------------------------------------------
if has('nvim')
  let g:terminal_color_0 = s:colors.black
  let g:terminal_color_1 = s:colors.red
  let g:terminal_color_2 = s:colors.green
  let g:terminal_color_3 = s:colors.yellow
  let g:terminal_color_4 = s:colors.blue
  let g:terminal_color_5 = s:colors.magenta
  let g:terminal_color_6 = s:colors.cyan
  let g:terminal_color_7 = s:colors.white
  let g:terminal_color_8 = s:colors.black_br
  let g:terminal_color_9 = s:colors.red
  let g:terminal_color_10 = s:colors.green
  let g:terminal_color_11 = s:colors.yellow
  let g:terminal_color_12 = s:colors.blue
  let g:terminal_color_13 = s:colors.magenta
  let g:terminal_color_14 = s:colors.cyan
  let g:terminal_color_15 = s:colors.white
elseif exists('*term_setansicolors')
  let g:terminal_ansi_colors = [
    \ s:colors.black,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ s:colors.black_br,
    \ s:colors.red,
    \ s:colors.green,
    \ s:colors.yellow,
    \ s:colors.blue,
    \ s:colors.magenta,
    \ s:colors.cyan,
    \ s:colors.white,
    \ ]
endif
" ====================================================
