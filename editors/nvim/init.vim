" General
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/keys.vim
source $HOME/.config/nvim/vim-plug/plugins.vim

if exists('g:vscode')
else
    " Installed plugins
    source $HOME/.config/nvim/plug-config/nerdtree.vim
    source $HOME/.config/nvim/plug-config/airline.vim
    source $HOME/.config/nvim/plug-config/signify.vim
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/fzf.vim

    source $HOME/.config/nvim/plug-config/vim-closetag.vim
    source $HOME/.config/nvim/plug-config/vim-commentary.vim

    " Themes
    source $HOME/.config/nvim/general/colors.vim
    source $HOME/.config/nvim/themes/material.vim
    " source $HOME/.config/nvim/themes/monokai-pro.vim
    " source $HOME/.config/nvim/themes/codedark.vim
endif

" COC linting
" :CocInstall coc-json     -> json
" :CocInstall coc-deno     -> deno
" :CocInstall coc-pyright  -> python
