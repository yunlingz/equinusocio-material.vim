" Copyright 2020 github.com/chuling and contributors
"
" Licensed under the Apache License, Version 2.0 (the "License");
" you may not use this file except in compliance with the License.
" You may obtain a copy of the License at
"
" http://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing, software
" distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.

" lightline

if exists('g:lightline')

  if get(g:, 'equinusocio_material_darker', 0) == 1
    let s:black_br = '#545454'
    let s:background = '#212121'
    let s:cursor_guide = '#171717'
    let s:background_lighter = '#2f2f2f'
  else
    let s:black_br = '#556e79'
    let s:background = '#263238'
    let s:cursor_guide = '#1b2327'
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
