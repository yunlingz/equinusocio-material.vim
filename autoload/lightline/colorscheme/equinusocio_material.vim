" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: Apache-2.0
" ------------------------------------------------------------------------

" lightline

" base color
" ===================================================================
let s:style = get(g:, 'equinusocio_material_style', 'default')

if get(g:, 'equinusocio_material_darker', 0) == 1
  let s:style = 'darker'
endif

if s:style == 'darker'
  let s:black_br = '#545454'
  let s:background = '#212121'
  let s:background_lighter = '#2f2f2f'
  let s:cursor_guide = '#171717'
  let s:selection = '#616161'
  let s:indent_line = '#424242'
  let s:menu_bg = '#000000'
else
  " default
  let s:black_br = '#546e7a'
  let s:background = '#263238'
  let s:background_lighter = '#344046'
  let s:cursor_guide = '#1a2327'
  let s:selection = '#667278'
  let s:indent_line = '#37474f'
  let s:menu_bg = '#000000'
endif

let s:vertsplit = s:cursor_guide
if get(g:, 'equinusocio_material_hide_vertsplit', 0) == 1
  let s:vertsplit = s:background
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

" pure
" --------------------
if s:style == 'pure'
  let s:black_br = '#484848'
  let s:background = '#000000'
  let s:background_lighter = '#212121'
  let s:cursor_guide = '#1c282e'
  let s:selection = s:black_br
  let s:indent_line = s:black_br
  let s:menu_bg = '#353535'
  let s:vertsplit = s:cursor_guide
  let s:comment = '#b2ccd6'
  " ---
  let s:white = '#ffffff'
  let s:foreground = '#ffffff'
endif
" --------------------
" ===================================================================

if exists('g:lightline')
  let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

  let s:p.normal.left = [[s:black, s:cyan], [s:foreground, s:black_br]]
  let s:p.normal.right = [[s:black, s:cyan], [s:foreground, s:black_br]]
  let s:p.normal.middle = [[s:foreground, s:background_lighter]]
  let s:p.normal.error = [[s:foreground, s:red]]
  let s:p.normal.warning = [[s:foreground, s:orange]]

  let s:p.insert.left = [[s:black, s:green], [s:foreground, s:black_br]]
  let s:p.insert.right = [[s:black, s:green], [s:foreground, s:black_br]]

  let s:p.replace.left = [[s:black, s:red], [s:foreground, s:black_br]]
  let s:p.replace.right = [[s:black, s:red], [s:foreground, s:black_br]]

  let s:p.visual.left = [[s:black, s:yellow], [s:foreground, s:black_br]]
  let s:p.visual.right = [[s:black, s:yellow], [s:foreground, s:black_br]]

  let s:p.inactive.left =  [[s:foreground, s:black_br], [s:foreground, s:black_br]]
  let s:p.inactive.right = [[s:foreground, s:black_br], [s:foreground, s:black_br]]
  let s:p.inactive.middle = [[s:foreground, s:background_lighter]]

  let s:p.tabline.left = [[s:foreground, s:background_lighter]]
  let s:p.tabline.right = [[s:black, s:cyan]]
  let s:p.tabline.middle = [[s:foreground, s:background_lighter]]
  let s:p.tabline.tabsel = [[s:black, s:cyan]]

  let g:lightline#colorscheme#equinusocio_material#palette = lightline#colorscheme#fill(s:p)
endif
