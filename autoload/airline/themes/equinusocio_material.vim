" ------------------------------------------------------------------------
" Copyright 2020 github.com/chuling and contributors
" See the full list at:
"   https://github.com/chuling/equinusocio-material.vim/contributors
" SPDX-License-Identifier: MIT
" ------------------------------------------------------------------------

" airline

" -------- begin function ----------
let g:airline#themes#equinusocio_material#palette = {}
function! airline#themes#equinusocio_material#refresh()

let s:colors = equinusocio_material#get_colors()

let s:palette = {}

let s:airline_b = [s:colors.foreground, s:colors.selection, '', '']
let s:airline_c = [s:colors.foreground, s:colors.background_lighter, '', '']
let s:airline_modified_group = {
  \ 'airline_c': [s:colors.green, s:colors.background_lighter, '', ''],
  \ }


let s:airline_a_normal = [s:colors.black , s:colors.cyan, '', '']
let s:airline_b_normal = s:airline_b
let s:airline_c_normal = s:airline_c
let s:palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let s:palette.normal_modified = s:airline_modified_group


let s:airline_a_insert = [s:colors.black , s:colors.green, '', '']
let s:airline_b_insert = s:airline_b
let s:airline_c_insert = s:airline_c
let s:palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let s:palette.insert_modified = s:airline_modified_group


let s:palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)


let s:palette.replace = s:palette.insert
let s:palette.replace_modified = s:airline_modified_group


let s:airline_a_visual = [s:colors.black , s:colors.yellow, '', '']
let s:airline_b_visual = s:airline_b
let s:airline_c_visual = s:airline_c
let s:palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let s:palette.visual_modified = s:airline_modified_group


let s:airline_a_inactive = [s:colors.foreground, s:colors.selection, '', '']
let s:airline_b_inactive = [s:colors.foreground, s:colors.selection, '', '']
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
