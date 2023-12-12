" Plug Plugins
call plug#begin('~/.config/nvim/plugged')

    " Syntax support
    Plug 'sheerun/vim-polyglot'

    " Comment code
    Plug 'tpope/vim-commentary'

    " Explorer
    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'ryanoasis/vim-devicons'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Autopairs
    Plug 'jiangmiao/auto-pairs'

    " Autoclose tags
    Plug 'alvan/vim-closetag'

    " Git plugin
    Plug 'mhinz/vim-signify'
    
    " Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Themes
    Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'phanviet/vim-monokai-pro'
    Plug 'tomasiser/vim-code-dark'

call plug#end()


