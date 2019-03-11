" Editor Options
set relativenumber
set mouse=a
syntax enable
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white
let g:netrw_banner = 0

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

"== PLUGINS ==
call plug#begin('~/.local/share/nvim/site/plugged')

" A simple, easy-to-use Vim alignment plugin.
Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Latex Live Preview
Plug 'donRaphaco/neotex', { 'for': 'tex' }
autocmd FileType tex nnoremap <C-p> :NeoTex<cr>

" Programming Syntax Checking
Plug 'vim-syntastic/syntastic'

" Markdown Vim Mode
Plug 'plasticboy/vim-markdown', {'for': 'md'}
autocmd FileType markdown nnoremap <C-p> :MarkdownPreview <cr>

" LanguageClient-neovim
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

call plug#end()
