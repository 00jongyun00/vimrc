" plugins
let need_to_install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let need_to_install_plugins = 1
endif

call plug#begin()
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'NLKNguyen/papercolor-theme'
Plug 'arcticicestudio/nord-vim'

" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'joshdick/onedark.vim'
Plug 'iwataka/ctrlproj.vim'
Plug 'sgur/ctrlp-extensions.vim'
Plug 'dkarter/bullets.vim'
Plug 'itchyny/screensaver.vim'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-dadbod'
" Plug 'github/copilot.vim'
" Theme
Plug 'yunlingz/equinusocio-material.vim'
" Frontend
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'AndrewRadev/tagalong.vim'
" Frontend end
Plug 'ludovicchabant/vim-gutentags'
Plug 'sainnhe/sonokai'
" Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
Plug 'mkropat/vim-tt'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'alvan/vim-closetag'
Plug 'mileszs/ack.vim'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'leafgarland/typescript-vim'
"ipython
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
" cpp
Plug 'bfrg/vim-cpp-modern'
" Plug 'Vim-cpp-highlighting'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'amix/vim-zenroom2'
Plug 'ap/vim-buftabline'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'govim/govim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'milkypostman/vim-togglelist'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'majutsushi/tagbar'
Plug 'xuhdev/SingleCompile'
Plug 'puremourning/vimspector'
" Plug 'vim-scripts/indentpython.eim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" java gradle
Plug 'tfnico/Vim-Gradle'
Plug 'lepture/vim-jinja'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'terryma/vim-multiple-cursors'
Plug 'eclipse/eclipse.jdt.ls'
" Plug 'uiiaoo/java-syntax.vim'
Plug 'vim-test/vim-test'
Plug 'Quramy/tsuquyomi'
" Plug 'ternjs/tern_for_vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'adelarsq/vim-devicons-emoji'
Plug 'dense-analysis/ale'
Plug 'diepm/vim-rest-console'
Plug 'vim-python/python-syntax'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rhysd/vim-clang-format'
Plug 'clangd/coc-clangd', {'do': 'yarn install --frozen-lockfile'}
Plug 'vim-airline/vim-airline-themes'
Plug 'mfussenegger/nvim-jdtls'
Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'GroovyLanguageServer/groovy-language-server'
Plug 'Maxattax97/coc-ccls'
Plug 'Scuilion/gradle-syntastic-plugin'
Plug 'skanehira/translate.vim'
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"packadd! vimspector

hi IndentGuidesOdd ctermbg=black
set nobackup
set nowritebackup
set vb
inoremap <ESC> <ESC>:set imdisable<CR>
filetype plugin indent on
syntax on

if need_to_install_plugins == 1
    echo "Installing plugins..."
    silent! PlugInstall
    echo "Done!"
    q
endif

call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/jongyunha/Downloads/google-java-format-1.13.0-all-deps.jar"

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType xml setlocal ts=2 sts=2 sw=2 expandtab


augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

" goyo
let g:goyo_width = 80
nnoremap <silent> <leader>z :Goyo<cr>
nnoremap <F9> :SCCompileRunAF -g -Wall -Wextra -std=c++2a<cr>

let test#strategy = {
  \ 'nearest': 'neovim',
  \ 'file':    'dispatch',
  \ 'suite':   'basic',
\}

" DB list
" localhost

let g:dadbods = []
let db = {
		\"name": "localhost vigilate",
		\"url": "postgresql://jongyunha@localhost/vigilate"
		\}

call add(g:dadbods, db)

let db = {
		\"name": "mboard-dev",
		\"url": "postgresql://syncsign-mboard-psql.postgres.database.azure.com/postgres?user=s2admin&password=qwerasdf1!2@"
		\}

call add(g:dadbods, db)

let db = {
		\"name": "mboard-prod",
		\"url": "postgresql://menuboard-postgres-dev.postgres.database.azure.com/postgres?user=elbigs@menuboard-postgres-dev&password=qwerasdf1!"
		\}

call add(g:dadbods, db)

let g:db = g:dadbods[2].url

command! DBSelect :call popup_menu(map(copy(g:dadbods), {k,v -> v.name}), {
			\"callback": 'DBSelected'
			\})

func! DBSelected(id, result)
	if a:result != -1
		let b:db = g:dadbods[a:result-1].url
		echomsg 'DB ' . g:dadbods[a:result-1].name . ' is selected.'
	endif
endfunc

"" operator mapping
func! DBExe(...)
	if !a:0
		let &operatorfunc = matchstr(expand('<sfile>'), '[^. ]*$')
		return 'g@'
	endif
	let sel_save = &selection
	let &selection = "inclusive"
	let reg_save = @@

	if a:1 == 'char'	" Invoked from Visual mode, use gv command.
		silent exe 'normal! gvy'
	elseif a:1 == 'line'
		silent exe "normal! '[V']y"
	else
		silent exe 'normal! `[v`]y'
	endif

	execute "DB " . @@

	let &selection = sel_save
	let @@ = reg_save
endfunc

xnoremap <expr> <Plug>(DBExe)     DBExe()
nnoremap <expr> <Plug>(DBExe)     DBExe()
nnoremap <expr> <Plug>(DBExeLine) DBExe() . '_'

xmap <leader>db  <Plug>(DBExe)
nmap <leader>db  <Plug>(DBExe)
omap <leader>db  <Plug>(DBExe)
nmap <leader>dbb <Plug>(DBExeLine)

 "ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_available=1
let g:ctrlp_by_filename=1
" nnoremap g :CtrlPYankRound
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_custom_ignore = { 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules|aJs|vendor|gen|bower_components|web.*|dist|.*Zone.Identifier|assets)$', 'file': '\.pyc$\|\.pyo$\|\v\.(exe|so|dll|class|png|jpg|jpeg)$' }
let NERDTreeIgnore=['\.pyc$', 'aJs$', 'vendor$', 'gen$','bower_components$', 'dist$', 'node_modules$', 'Zone.Identifier$', '\.vim$', '\~$'] " Ignores for NERDTree
let g:ctrlp_root_markers = ['.ctrlp']
let g:ctrlp_max_height = 30
let g:ctrlproj_open_extensions = ['pdf', 'png']
let g:ctrlproj_configuration_path = '~/.vim/.ctrlproj'
let g:ctrlp_yankring_disable = 1
func! MyCtrlPTag()
    CtrlPTag
endfunc
com! MyCtrlPTag call MyCtrlPTag()

nnoremap SJ :CtrlPBuffer
nnoremap SD :CtrlPDir
nnoremap SN :CtrlPMRUFiles
nnoremap SM :CtrlPCmdline
nnoremap ST :CtrlPTag
nnoremap SQ :CtrlPQuickfix
nnoremap SL :CtrlPLine

nnoremap SE :CtrlprojEdit
nnoremap SR :Ctrlproj
nnoremap SLD :CtrlprojLastDir

nnoremap SC :CtrlPMenu
nnoremap SP :CtrlP

let g:neovide_cursor_vfx_mode = "torpedo"
let g:neovide_refresh_rate=140
let g:neovide_fullscreen=v:true
let neovide_remember_window_size = v:true
let g:neovide_cursor_animation_length=0.13
let g:neovide_cursor_trail_length=0.8


function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    sleep
    call feedkeys(a:search_text)
endfunction
command! -nargs=1 CtrlPWithText call CtrlPWithSearchText(, '')

let g:translate_source = "en"
let g:translate_target = "ko"
let g:translate_popup_window = 0 " if you want use popup window, set value 1
let g:translate_winsize = 10 " set buffer window height size if you doesn't use popup window

let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'
" coc tsserver
"  Highlight the symbol and its references when holding the cursor.
let g:coc_global_extensions = [ 'coc-tsserver' ]
set cmdheight=2
" set updatetime=300
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

let g:floaterm_keymap_toggle = '<F10>'
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }}
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:typescript_opfirst='\%([<>=,?^%|*/&]\|\([-:+]\)\1\@!\|!=\|in\%(stanceof\)\=\>\)'

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
 " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 " Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
let g:syntastic_java_checkers = []

"ipython
"always use tmux
let g:slime_target = 'tmux'

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1


" Bullets.vim
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]

" Use K to show documentation in preview window.
nnoremap <S-M> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

 " same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" Nerd commenter
" Highlight the symbol and its references when holding the cursor.
" autocmd CursorHold * silent call CocActionAsync('highlight')
" always show the status bar
set laststatus=2

" enable 256 colors

" turn on line numbering
set number

" sane text files
set fileformat=unix
set encoding=UTF-8
set fileencoding=UTF-8

" sane editing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set colorcolumn=90
set expandtab

" show the matching part of the pair for [] {} and ()
set showmatch


"start
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" General settings
"=====================================================
syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
" set t_ut=256

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

 " Additional mappings for Esc (useful for MacBook with touch bar)
"inoremap jj <Esc>
"inoremap jk <Esc>

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
\ if v:insertmode == 'i' |
\   silent execute '!echo -ne "\e[6 q"' | redraw! |
\ elseif v:insertmode == 'r' |
\   silent execute '!echo -ne "\e[4 q"' | redraw! |
\ endif
au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:indent_guides_speacechar = '┆'
let g:indent_guides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++17 -Wall -Wextra -Wpedantic"
" let g:syntastic_c_compiler_options = "-std=c17 -Wall -Wextra -Wpedantic""

" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"devicons
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" set guifont=:h
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11


" python executables for different plugins
let g:pymode_python='python3'
let g:syntastic_python_python_exec='python3'

" indent
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" au VimEnter * IndentGuidesEnable

"" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highligh
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%91v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=90
augroup END

 " 주석처리
" " Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
map <Leader>cc <plug>NERDCustomDelimiters
map <Leader>c<space> <plug>NERDComComment

" guifont
autocmd FileType nerdtree setlocal nolist
 let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F6>'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python3']
let g:syntastic_java_javac_autoload_maven_classpath = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" YouCompleteMe
" set completeopt-=preview

"end


autocmd BufWritePre *.py execute ':Black'
nmap <C-b> :Black<CR>

nmap <C-q> :Translate<CR>
nmap <C-s> :w<CR>

" enable all Python syntax highlighting features
let python_highlight_all = 1
set viminfo='25,\"50,n~/.viminfo
" autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
" autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType go set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType vue set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType jsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType tsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType less set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType scss set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType jet set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType svelte set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END
"" ale linters
let g:ale_linters = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['eslint', 'tsserver']
 \}

let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'

"" ale fixers
let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['eslint', 'prettier'],
\ 'tsx': ['eslint', 'prettier'],
\ 'typescript': ['eslint', 'prettier']
\}

let g:ale_typescript_prettier_use_local_config = 0
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
let g:prettier#config#config_precedence = 'file-override'
let g:user_emmet_leader_key=','

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.jet PrettierAsync
autocmd BufWritePost *.ts,*.tsx,*.js,*.jsx,*.scss,*.jet ALEFix eslint

" auto-pairs
au FileType python let b:AutoPairs = AutoPairsDefine({"f'" : "'", "r'" : "'", "b'" : "'"})

" word movement
imap <S-Left> <Esc>bi
nmap <S-Left> b
imap <S-Right> <Esc><Right>wi
nmap <S-Right> w

" indent/unindent with tab/shift-tab
nmap <Tab> >
nmap <S-tab> <
imap <S-Tab> <Esc><<i
vmap <Tab> >gv
vmap <S-Tab> <gv

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

" color scheme
syntax on

let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_bold=0
let g:solarized_contrast="high"
"     call togglebg#map("<F5>")

let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_addtags_transform = "camelcase"

let g:go_autodetect_gopath = 0
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_auto_type_info = 1
let g:go_auto_sameids = 0
let g:go_debug=['shell-commands']

" quickfix 이동 및 open/close
" nnoremap <C-n> :cnext<CR>
nnoremap <C-p> :cprevious<CR>
nnoremap <LocalLeader>q :call ToggleQuickfixList()<CR>

" 테스트 커버리지 검사 및 색깔 표시 토글
nnoremap <LocalLeader>c :GoCoverageToggle<CR>

" typescript
" au FileType typescript nmap <buffer> <Tab><Tab>r :!ts-node %<CR>
"
" " 자주 쓰는 기능들
" autocmd FileType go nnoremap <Tab>b :GoBuild<CR>
" autocmd FileType go nnoremap <Tab>r :GoRun<CR>
" autocmd FileType go nnoremap <Tab><Tab>r :GoRun %<CR>
" au FileType python nmap <buffer> <Tab><Tab>r :!python %<CR>
"
" autocmd FileType go nnoremap <Tab>t :GoTest<CR>
" autocmd FileType go nnoremap <Tab><Tab>t :GoTestFunc<CR>
" autocmd FileType go nnoremap <Tab>c :GoCoverageToggle<CR>

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax enable
set background=dark
" execute pathogen#infect()
let g:enable_italic_font = 1

let g:sonokai_style = 'atlantis'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
" best top3 theme sonokai
colorscheme onedark
let g:airline_theme = 'papercolor'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
filetype on
filetype plugin indent on

let g:lightline = { 'colorscheme': 'PaperColor' }

let java_highlight_functions = 1
let java_highlight_all = 1
" If you are trying this at runtime, you need to reload the syntax file
" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc
let g:vimspector_enable_mappings = 'HUMAN'

" code folding
set foldmethod=indent
set foldlevel=99

"java compile and run
nnoremap <leader>ac <CR> :! javac %<CR> :! java -cp %:p:h %:t:r<CR>

" wrap toggle
setlocal nowrap
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! iunmap <buffer> <Up>
    silent! iunmap <buffer> <Down>
    silent! iunmap <buffer> <Home>
    silent! iunmap <buffer> <End>
else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap  <buffer> <silent> <Up>   gk
    noremap  <buffer> <silent> <Down> gj
    noremap  <buffer> <silent> <Home> g<Home>
    noremap  <buffer> <silent> <End>  g<End>
    inoremap <buffer> <silent> <Up>   <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End>  <C-o>g<End>
endif
endfunction

" move through split windows
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>
nmap <leader>x :bd<CR>

" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" file browser
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1
let g:nerdtree_open = 0
let g:NERDTreeWinPos = "left"
let g:tagbar_left = 0
map <leader>n :call NERDTreeToggle()<CR>
nnoremap <C-f> :NERDTreeFind<CR>
 function NERDTreeToggle()
    NERDTreeTabsToggle
    if g:nerdtree_open == 1
        let g:nerdtree_open = 0
    else
        let g:nerdtree_open = 1
        wincmd p
    endif
endfunction

 " function! StartUp()
"     if 0 == argc()
"         NERDTree
"     end
" endfunction
" autocmd VimEnter * call StartUp()

" ale
" map <C-e> <Plug>(ale_next_wrap)
" map <C-r> <Plug>(ale_previous_wrap)

" tags
map <leader>t :TagbarToggle<CR>

 " copy, cut and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa


" disable autoindent when pasting text
" source: https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"


function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" 구문 체크
let g:syntastic_html_tidy_ignore_errors=[
    \'proprietary attribute "ng-',
    \'proprietary attribute "chart-',
    \'proprietary attribute "pdk-'
\]
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_css_checkers = ['csslint']
let g:syntastic_c_checkers = ['clang_check']
let g:syntastic_html_checkers = ['jshint']
let g:syntastic_typescript_checkers = ['eslint'] " You shouldn't use 'tsc' checker. 원래는 tsuquyomi
let g:syntastic_error_symbol = '🙅'
let g:syntastic_warning_symbol = '✗ '
let g:syntastic_style_error_symbol = '🤷'
let g:syntastic_style_warning_symbol = '❔'
highlight clear SignColumn
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

silent! nmap <F8> :SyntasticToggleMode<CR>

" Let clangd fully control code completion
"let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
"let g:ycm_clangd_binary_path = exepath("clangd")

" tsuquyomi typescript 지원
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers  = ['eslint'] " 'tsc'검사기를 사용하면 안됩니다.
autocmd  FileType typescript nmap  <buffer>  <leader> f :TsuQuickFix <CR>


" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.jet'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }


 " Shortcut for closing tags, default is '>
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
