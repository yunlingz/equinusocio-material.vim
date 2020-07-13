# Equinusocio's material theme for Neovim/Vim

[![license:Apache-2.0](https://img.shields.io/badge/license-Apache--2.0-6F42C1)](LICENSE)

This theme was ported from [equinusocio/vsc-material-theme](https://github.com/equinusocio/vsc-material-theme).

Try this theme if others don't meet your needs.

## Preview

### Darker

![](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/darker.png)

### Default

![](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/default.png)

### Pure

![](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/pure.png)

Note that syntax highlighting for brackets/parentheses in screenshots was enhanced by [luochen1990/rainbow](https://github.com/luochen1990/rainbow), you may like to install it manully.

## How to use

**IMPORTANT: True colors are required for vim in terminal**

* vim-plug

```vim
Plug 'chuling/equinusocio-material.vim'

" true colors are required for vim in terminal
set termguicolors

" use a different style
" valid values: 'default' (default), 'darker', 'pure'
let g:equinusocio_material_style = 'pure'

" less bright
" which means some colors will be modified by this formula:
" (r, g, b) -> ( max(r - less, 0), max(g - less, 0), max(b - less, 0) )
let g:equinusocio_material_less = 50

" make vertsplit invisible (visible by default) (default 0)
" if style == 'pure', then the vertsplit is always visible
let g:equinusocio_material_hide_vertsplit = 1

" parentheses improved (default 0)
" enabling this option with 'luochen1990/rainbow' installed is not encouraged
" because this option and 'luochen1990/rainbow' will registry conflicting events
" in summary:
" 1. no 'luochen1990/rainbow' installed, no parentheses improved: nothing to do (default 0)
" 2. no 'luochen1990/rainbow' installed, want built-in parentheses improved: set to 1
" 3. 'luochen1990/rainbow' installed: nothing to do (default 0)
let g:equinusocio_material_bracket_improved = 1

" use a better vertsplit char
set fillchars+=vert:│

colorscheme equinusocio_material

" this theme has a buildin lightline/airline theme
let g:airline_theme = 'equinusocio_material'
let g:lightline = {
  \ 'colorscheme': 'equinusocio_material',
  \ }
```

<details>
  <summary>Fix problem while updating</summary>

**IMPORTANT**: This repo has been reformed to reduce the size, and you might find problem (like `fatal: refusing to merge unrelated histories`) while runing plugin update command such as `PlugUpdate`. To solve this problem (for `vim-plug` users), first run `PlugClean` to detect the problem and delete the directory, then re-run `PlugUpdate` or `PlugInstall`.

[Related issue](https://github.com/chuling/vim-equinusocio-material/issues/2)
</details>

### Tmux

If experiencing problems with tmux you are, please make sure that tmux is configured properly to support true color. For example, if the `$TERM` variable equals `xterm-256color`, these lines should be added into `~/.tmux.conf`:

```
set -g default-terminal "xterm-256color"
set -ga terminal-overrides ",xterm-256color:Tc"
```

Or

```
set -g default-terminal "${TERM}"
set -ga terminal-overrides ",${TERM}:Tc"
```

## Other

If using iterm you are, please try this color preset [chuling/iterm2-equinusocio-material](https://github.com/chuling/iterm2-equinusocio-material).

It's also available here: [term](./term)

## License

[Apache-2.0](LICENSE)
