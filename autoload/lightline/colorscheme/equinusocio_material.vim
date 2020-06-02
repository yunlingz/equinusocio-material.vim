" MIT License
"
" Copyright 2020 github.com/chuling and contributors
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
" IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
" CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
" TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
" SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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
