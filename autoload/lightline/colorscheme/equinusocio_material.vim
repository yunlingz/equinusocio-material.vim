" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: MIT
" ------------------------------------------------------------------------

" lightline

let s:colors = equinusocio_material#get_colors()

if exists('g:lightline')
  let s:p = { 'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {} }

  let s:p.normal.left = [[s:colors.black, s:colors.cyan], [s:colors.foreground, s:colors.black_br]]
  let s:p.normal.right = [[s:colors.black, s:colors.cyan], [s:colors.foreground, s:colors.black_br]]
  let s:p.normal.middle = [[s:colors.foreground, s:colors.background_lighter]]
  let s:p.normal.error = [[s:colors.foreground, s:colors.red]]
  let s:p.normal.warning = [[s:colors.foreground, s:colors.orange]]

  let s:p.insert.left = [[s:colors.black, s:colors.green], [s:colors.foreground, s:colors.black_br]]
  let s:p.insert.right = [[s:colors.black, s:colors.green], [s:colors.foreground, s:colors.black_br]]

  let s:p.replace.left = [[s:colors.black, s:colors.red], [s:colors.foreground, s:colors.black_br]]
  let s:p.replace.right = [[s:colors.black, s:colors.red], [s:colors.foreground, s:colors.black_br]]

  let s:p.visual.left = [[s:colors.black, s:colors.yellow], [s:colors.foreground, s:colors.black_br]]
  let s:p.visual.right = [[s:colors.black, s:colors.yellow], [s:colors.foreground, s:colors.black_br]]

  let s:p.inactive.left =  [[s:colors.foreground, s:colors.black_br], [s:colors.foreground, s:colors.black_br]]
  let s:p.inactive.right = [[s:colors.foreground, s:colors.black_br], [s:colors.foreground, s:colors.black_br]]
  let s:p.inactive.middle = [[s:colors.foreground, s:colors.background_lighter]]

  let s:p.tabline.left = [[s:colors.foreground, s:colors.background_lighter]]
  let s:p.tabline.right = [[s:colors.black, s:colors.cyan]]
  let s:p.tabline.middle = [[s:colors.foreground, s:colors.background_lighter]]
  let s:p.tabline.tabsel = [[s:colors.black, s:colors.cyan]]

  let g:lightline#colorscheme#equinusocio_material#palette = lightline#colorscheme#fill(s:p)
endif
