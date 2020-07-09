" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: Apache-2.0
" ------------------------------------------------------------------------

" airline

" -------- begin function ----------
let g:airline#themes#equinusocio_material#palette = {}
function! airline#themes#equinusocio_material#refresh()

" -------------- theme color ------------------
if get(g:, 'equinusocio_material_darker', 0) == 1
  let s:black_br = '#545454'
  let s:background = '#212121'
  let s:cursor_guide = '#171717'
  let s:background_lighter = '#2f2f2f'
else
  let s:black_br = '#546e7a'
  let s:background = '#263238'
  let s:cursor_guide = '#1a2327'
  let s:background_lighter = '#344046'
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
let s:foreground = '#eeffff'
" -------------- theme color ------------------

let s:palette = {}

let s:airline_b = [s:foreground, s:black_br, '', '']
let s:airline_c = [s:foreground, s:background_lighter, '', '']
let s:airline_modified_group = {
  \ 'airline_c': [s:black, s:orange, '', ''],
  \ }


let s:airline_a_normal = [s:black , s:cyan, '', '']
let s:airline_b_normal = s:airline_b
let s:airline_c_normal = s:airline_c
let s:palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let s:palette.normal_modified = s:airline_modified_group


let s:airline_a_insert = [s:black , s:green, '', '']
let s:airline_b_insert = s:airline_b
let s:airline_c_insert = s:airline_c
let s:palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let s:palette.insert_modified = s:airline_modified_group


let s:palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)


let s:palette.replace = s:palette.insert
let s:palette.replace_modified = s:airline_modified_group


let s:airline_a_visual = [s:black , s:yellow, '', '']
let s:airline_b_visual = s:airline_b
let s:airline_c_visual = s:airline_c
let s:palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let s:palette.visual_modified = s:airline_modified_group


let s:airline_a_inactive = [s:foreground, s:black_br, '', '']
let s:airline_b_inactive = [s:foreground, s:black_br, '', '']
let s:airline_c_inactive = s:airline_c
let s:palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let s:palette.inactive_modified = s:airline_modified_group


let s:airline_a_commandline = s:airline_a_normal
let s:airline_b_commandline = s:airline_b
let s:airline_c_commandline = s:airline_c
let s:palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#equinusocio_material#palette = s:palette
" ------
endfunction
" -------- end function ----------
call airline#themes#equinusocio_material#refresh()
