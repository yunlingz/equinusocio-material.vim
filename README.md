# Equinusocio's material theme for Vim/Neovim

[![license: MIT](https://img.shields.io/badge/license-MIT-6F42C1)](LICENSE-MIT)

This theme was ported from [equinusocio/vsc-material-theme](https://github.com/equinusocio/vsc-material-theme).

Try this theme if others don't meet your needs.

## Preview

### Darker

![](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/0.png)

### Default

![](https://raw.githubusercontent.com/chuling/vim-equinusocio-material-preview/master/1.png)

Note that syntax highlighting for brackets/parentheses in screenshots was enhanced by [luochen1990/rainbow](https://github.com/luochen1990/rainbow), you may like to install it manully.

The font is [JetBrains/JetBrainsMono](https://github.com/JetBrains/JetBrainsMono.git).

## How to use

**IMPORTANT: True colors are required for vim in terminal**

* vim-plug

```vim
Plug 'chuling/vim-equinusocio-material'

" true colors are required for vim in terminal
set termguicolors

" if you prefer the default one, comment out this line
let g:equinusocio_material_darker = 1

" make vertsplit invisible
let g:equinusocio_material_hide_vertsplit = 1

colorscheme equinusocio_material

" this theme has a buildin lightline theme, you can turn it on
let g:lightline = {
    \ 'colorscheme': 'equinusocio_material',
    \ }
```

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

[MIT](LICENSE-MIT)
