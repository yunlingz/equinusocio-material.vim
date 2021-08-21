" SPDX-License-Identifier: BSD-2-Clause
"
" Copyright 2021 Zhu Yun-ling <yunling.zhu@outlook.com> and contributors

" base color
let s:colors = {}
" ===================================================================
let s:style = get(g:, 'equinusocio_material_style', 'default')

if get(g:, 'equinusocio_material_darker', 0) == 1
  let s:style = 'darker'
endif

if s:style == 'darker'
  let s:colors.black_br = '#747474'
  let s:colors.background = '#212121'
  let s:colors.background_lighter = '#2f2f2f'
  let s:colors.cursor_guide = '#171717'
  let s:colors.selection = '#454545'
  let s:colors.indent_line = '#424242'
  " ---
  let s:colors.menu_bg = '#414141'
else
  " default
  let s:colors.black_br = '#748e9a'
  let s:colors.background = '#263238'
  let s:colors.background_lighter = '#344046'
  let s:colors.cursor_guide = '#1a2327'
  let s:colors.selection = '#42565a'
  let s:colors.indent_line = '#37474f'
  " ---
  let s:colors.menu_bg = '#465258'
endif

let s:colors.vertsplit = s:colors.cursor_guide
if get(g:, 'equinusocio_material_hide_vertsplit', 0) == 1
  let s:colors.vertsplit = s:colors.background
endif

let s:colors.black = '#000000'
let s:colors.red = '#ff5370'
let s:colors.green = '#c3e88d'
let s:colors.yellow = '#ffcb6b'
let s:colors.orange = '#f78c6c'
let s:colors.blue = '#82aaff'
let s:colors.magenta = '#c792ea'
let s:colors.cyan = '#89ddff'
let s:colors.white = '#eeffff'
" ---------------------------
let s:colors.foreground = '#eeffff'
let s:colors.caret = '#ffcc00'
let s:colors.float_bg = '#000000'
let s:colors.comment = s:colors.black_br
" ---------------------------
let s:colors.pure_black = '#000000'
" ---------------------------
let s:colors.none = 'NONE'
let s:colors.underline = 'underline'
let s:colors.undercurl = 'undercurl'
let s:colors.bold = 'bold'
let s:colors.inverse = 'inverse'

" pure
" --------------------
if s:style == 'pure'
  let s:colors.black_br = '#727272'
  let s:colors.background = '#000000'
  let s:colors.background_lighter = '#212121'
  let s:colors.cursor_guide = '#1c282e'
  let s:colors.selection = '#3c3c3c'
  let s:colors.indent_line = s:colors.black_br
  " ---
  let s:colors.menu_bg = '#303030'
  let s:colors.float_bg = s:colors.menu_bg
  let s:colors.comment = s:colors.black_br
  " ---
  let s:colors.vertsplit = s:colors.cursor_guide
  " ---
  let s:colors.white = '#eeeeee'
  let s:colors.foreground = '#eeeeee'
endif
" --------------------

" less
" --------------------
function! s:hex2rgb(hex)
  return [str2nr(a:hex[1:2], 16), str2nr(a:hex[3:4], 16), str2nr(a:hex[5:6], 16)]
endfunction

function! s:rgb_dec(rgb, dec)
  return [max([a:rgb[0]-a:dec, 0]), max([a:rgb[1]-a:dec, 0]), max([a:rgb[2]-a:dec, 0])]
endfunction

function! s:rgb2hex(rgb)
  return printf('#%02x%02x%02x', a:rgb[0], a:rgb[1], a:rgb[2])
endfunction

function! s:apply_less_color(less)
  for scheme in ['red', 'green', 'yellow', 'orange', 'blue', 'magenta', 'cyan', 'white', 'foreground']
    execute 'let color = ' . 's:colors.' . scheme
    let rgb = s:rgb_dec(s:hex2rgb(color), a:less)
    execute 'let s:colors.' . scheme . " = '" . s:rgb2hex(rgb) . "'"
  endfor
endfunction
let s:less_color = get(g:, 'equinusocio_material_less', 0)
if s:less_color > 0
  call s:apply_less_color(s:less_color)
endif
" --------------------
" ===================================================================

function! equinusocio_material#get_colors()
  return s:colors
endfunction
