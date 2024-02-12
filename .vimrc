"-----------------------------------------------------------------------"
" Vundle 환경설정
"------------------------------------------------------------------------"
filetype off                   " required!
set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" let Vundle manage Vundle
	" required!
	Plugin 'VundleVim/Vundle.vim'

	" vim 하단에 파일 정보 띄우기
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
   
	"vim corlor/scheme 수정
	Plugin 'morhetz/gruvbox'
	
	" 파일 및 폴더 탐색
	Plugin 'ctrlpvim/ctrlp.vim'

	" vim 사용중 git 명령어 사용
	Plugin 'tpope/vim-fugitive'

	"vim 하단에 커서가 있는 함수나 변수의 정의 부분을 출력
	Plugin 'wesleyche/srcexpl'

	"명령어 자동완성 플러그인(inc + <C-a> : #include<>)
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'

	" [] {} 등 괄호 입력시 자동으로 닫아주는 플러그인
	Plugin 'jiangmiao/auto-pairs' 

	Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plugin 'junegunn/fzf.vim'

	Plugin 'preservim/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	Plugin 'ryanoasis/vim-devicons'
	Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'

	Plugin 'neoclide/coc.nvim', {'branch': 'release'}

	"Plugin 'airblade/vim-gitgutter'

	" ...
call vundle#end()
filetype plugin indent on     " required!
	"
	" Brief help
	" :BundleList          - list configured bundles
	" :BundleInstall(!)    - install(update) bundles
	" :BundleSearch(!) foo - search(or refresh cache first) for foo
	" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
	"
	" see :h vundle for more details or wiki for FAQ
	" NOTE: comments after Bundle command are not allowed..

"-----------------------------------------------------------------------"
"vim 환경설정
"-----------------------------------------------------------------------"

	" Vim 전용 기능 사용
	set nocompatible "Vim Using

	"파일 타입 설정
	set encoding=utf-8
	set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1

	" 명령어 기록 갯수
	set hi=1000

	" 백스페이스 사용
	set bs=indent,eol,start

	" 오른쪽 하단 커서 위치 항상 보이기
	set ru "same ruler

	" 줄번호 표시
	set nu

	" 줄 번호 표시 너비 설정
	set nuw=5

	" 탭 크기 설정
	set ts=4 "same tabstop
	set sw=4 "same shiftwidth
	set sts=0 "same softtabstop

	autocmd FileType make setlocal noexpandtab "Makefile은 tab 문법이기 때문에 스페이스 대체 안함.
	" 탭 >> 공백 변환 사용안함
	"set noet

	" 자동 줄바꿈 안함
	"set nowrap
	set linebreak
	set showbreak=+++\

	" 들여쓰기 설정
	set autoindent
	set cindent

	" 스마트 셋팅
	set smartcase
	set smarttab
	set smartindent

	" magic 기능 사용
	set magic

	" 이동 동작시 줄의 시작으로 자동 이동
	set sol

	" 비쥬얼 모드 동작 설정
	set sel=exclusive

	" 괄호짝 찾기에서 <> 도 찾도록 추가
	set mps+=<:>

	" 검색어 강조
	set hls

	" 검색시 파일 끝에서 되돌리기 안함
	set nows

	" 스마트한 대소문자 구별 기능 사용
	set scs

	"대소문자 구분(구분 없이 할 때 i 옵션 또는 ignorecase)
	set noignorecase

	" 항상 status 라인을 표시
	set ls=2

	"파일 형식에 따른 신택스 하이라이팅 켜기
	sy enable

	"괄호 매치
	set showmatch

	"마우스 자동
	set mouse=a

	"클립보드 복사
	"set clipboard=unnamed "use OS clipboard
	set clipboard=unnamedplus "use OS clipboard

	" 키워드 입력시 점진적 검색
	set incsearch
	set spell

"-----------------------------------------------------------------------"
" User Key Setting
"-----------------------------------------------------------------------"
let mapleader = ","

" 새로운 파일을 열때 사용, 경로를 입력해야 한다. 
nmap <leader>n :e
" 가로로 새로운 윈도우를 열 때 사용, 파일 경로 입력 필요
nmap <leader>s :sp
" 세로로 새로운 윈도우를 열 때 사용, 파일 경로 입력 필요
nmap <leader>v :vsp
" 다음 버퍼로 이동
nnoremap <leader>z :bp<CR>
" 이전 버퍼로 이동
nnoremap <leader>x :bn<CR>
" 현재 버퍼를 닫고 이전 버퍼로 이동
nmap <leader>bz :bp <BAR> bd #<CR>
" 모든 버퍼와 각 버퍼 상태 출력
nmap <leader>bl :ls<CR>

"fzf excute
nmap <leader>f :FZF<cr>

"Rg excute
"Input Pattern
nmap <leader>r :RG<Space>
"Input cursor location
nmap <leader>R :RG <C-R>=expand("<cword>")<CR><CR>

" Key Setting - resize windows
nnoremap <silent> <Leader>= :exe "resize +3"<CR>
nnoremap <silent> <Leader>- :exe "resize -3"<CR>
nnoremap <silent> <Leader>] :exe "vertical resize +8"<CR>
nnoremap <silent> <Leader>[ :exe "vertical resize -8"<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader>} :exe "vertical resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>{ :exe "vertical resize " . (winheight(0) * 2/3)<CR>

nnoremap K kzz
nnoremap J jzz

nnoremap <Leader>h :noh<CR>

"-----------------------------------------------------------------------"
" User  환경설정
"-----------------------------------------------------------------------"
" F2 [], {} 괄호에 대한 폴딩 실행
nmap <F2> v]}zf
nmap <F3> :Git blame<cr>
" F4 누를 경우 컴파일(Makeile 있어야 함.)
nmap <F4> :w<cr> : make<cr> : ccl<cr>  cw<cr>
" F5 누를시 현재 라인 주석, 범위 설정 후 누르면 범위 주석
nmap <F5> :norm I//<cr>
" F6 누를시 주석 해제
nmap <F6> :norm ^xx<cr>
" F7 key = Tag List Toggle
nmap <F7> :TlistToggle<CR>
" F8 key = SrcExpl Toggle
nmap <F8> :SrcExplToggle<CR>
"nmap  <F9> :NERDTreeToggle<CR>	" F9 Key = NERD Tree Toggle
"nmap <F10> :let g:view_source = 0<CR>
nmap <F10> :!rm -rf cscope.files <CR> :!find . 
	\ \( -name '*.c' -o -name '*.cpp' -o -name '*.cc'
	\ -o -name '*.h' -o -name '*.s' -o -name '*.S' \) 
	\ -print > cscope.files <CR> :!cscope -i cscope.files <CR><CR>
" F12 tags 생성
nmap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./ <CR><CR>

"----------------------------------------------------------------------"
" AirLine
"----------------------------------------------------------------------"
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 "버퍼 목록 켜기
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" 파일명만 출력
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_highlighting_cache = 1

let g:airline_powerline_fonts = 1
let g:airline_theme= 'minimalist'
"let g:airline_section_y = ''
"let g:airline_section_warning= '' "마지막 status창 사용 안함
" 버퍼 목록 켜기
" 이 옵션은 버퍼를 수정한 직후 버퍼를 감춰지도록 한다.
" 이 방법으로 버퍼를 사용하려면 거의 필수다.
set hidden


"----------------------------------------------------------------------"
" gruvbox 설정
"----------------------------------------------------------------------"
set background=dark
let g:gruvbox_contrast_dark = 'soft'
"let g:gruvbox_contrast_light = 'soft'
"let g:gruvbox_transparent_bg = '1'
let g:gruvbox_italic = 1
"let g:gruvbox_underline=1
"let g:gruvbox_undercurl=1
"let g:gruvbox_termcolors=16
"let g:gruvbox_number_column='aqua'
"let g:gruvbox_sign_column='aqua'
"let g:gruvbox_color_column='aqua'

" Force to use underline for spell check results
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
    \ highlight SpellBad
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellCap
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellLocal
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellRare
    \   cterm=Underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=Reverse
    \   gui=Undercurl
    \   guisp=Red
  augroup END
set termguicolors
colorscheme gruvbox


"----------------------------------------------------------------------"
" ctrlp.vim 설정(파일 탐색 속도 향상)
"----------------------------------------------------------------------"
set wildignore+=*/tmp/*,*.so,*.a,*.swp,*.zip,*.obj  " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  		" Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$',
  \ 'file': '\v\.(exe|so|dll|a)$',
  \ 'link': 'some_bad_symbolic_links'
\ }
let g:ctrlp_max_files = 10000
let g:ctrlp_max_depth = 30
let g:ctrlp_follow_symlinks = 1
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"let g:ctrlp_use_readdir = 0
let g:ctrlp_root_markers = ['ctrlp-marker']

" <c-f>, <c-b> 모드 변환(MRU(Most Recently Used)내 검색, file 전체 검색, buffers내 검색)
" <c-d> path내 검색어가 포함되어 검색 또는 오직 파일내 검색어만 포함 검색 
" <c-r> 정규 표현식 모드 전환(검색어와 완전히 일치한 파일만 보여 줌)
" <c-j>, <c-k> 검색결과내 커서 위아래 이동
" <c-t>, <c-v>, <c-x> 파일을 새로운 tab으로 열거나 창을 분활하여 파일을 염.
" <c-n>, <n-p> 검색 history의 next/previous 문자열 선택
" <c-z>, <c-o> 검색된 결과물에 <c-z>로 마크를 하고 <c-o>로 오픈(멀티마크 가능) 
" <c-y> 검색입력어로 된 파일을 만든다. 파일 위치는 검색 폴더의 최상위 위치
" :help ctrlp-mappings 키 맵핑에 관한 설명


"-----------------------------------------------------------------------"
" Source Explorer 환경설정
"-----------------------------------------------------------------------"
nmap <F8> :SrcExplToggle<CR>		" F8 key = SrcExpl TOggle

let g:SrcExpl_winHeight = 12		" SrcExpl 윈도우 높이 지정
let g:SrcExpl_refreshTime = 100		" refreshing time = 100ms
let g:SrcExpl_jumpKey = "<ENTER>"		" 해당 definition으로 jump
let g:SrcExpl_gobackKey = "<SPACE>"		" back
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
        \ ]

" // The color schemes used by Source Explorer. There are five color schemes
" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
let g:SrcExpl_colorSchemeList = [
        \ "Cyan",
    \ ]

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1 

" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
let g:SrcExpl_nestedAutoCmd = 1

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" // create/update the tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" // Set "<F3>" key for displaying the previous definition in the jump list
let g:SrcExpl_prevDefKey = "<S-J>"

" // Set "<F4>" key for displaying the next definition in the jump list
let g:SrcExpl_nextDefKey = "<S-K>"


"-----------------------------------------------------------------------"
" ultisnips&vim-snippets Trigger Configuration
"-----------------------------------------------------------------------"
" Trigger configuration. You need to change this to something other than <tab>
" if you use one of the following:
" " - https://github.com/Valloric/YouCompleteMe
" " - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<C-a>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips']


"-----------------------------------------------------------------------"
" fzf layout
"-----------------------------------------------------------------------"
" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val, "lnum": 1 }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.9,'yoffset':0.5,'xoffset': 0.5 } }

" - down / up / left / right
"let g:fzf_layout = { 'left': '50%' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/**'"

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)

" Get text in files with Rg
" Make Ripgrep ONLY search file contents and not filenames
" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = "rg --column --line-number --no-heading --color=always --glob '!tags' --smart-case --case-sensitive %s || true"
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


"-----------------------------------------------------------------------"
" NERD Tree Key 설정
"-----------------------------------------------------------------------"
let NERDTreeWinPos = "left"		" NERD Tree위치 = 왼쪽
nmap  <C-f> :NERDTreeFind<CR> " Ctrl + f  NERDtree Toggle
nmap  <C-e> :NERDTreeToggle<CR> " Ctrl + e  NERDtree Toggle

"-----------------------------------------------------------------------"
" NERDTree 환경 설정
"-----------------------------------------------------------------------"
let g:NERDTreeGitStatusIndicatorMapCustom = {
	\ 'Modified'  :'✹',
	\ 'Staged'    :'✚',
	\ 'Untracked' :'✭',
	\ 'Renamed'   :'➜',
	\ 'Unmerged'  :'═',
	\ 'Deleted'   :'✖',
	\ 'Dirty'     :'✗',
	\ 'Ignored'   :'☒',
	\ 'Clean'     :'✔︎',
	\ 'Unknown'   :'?',
\ }
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeDirArrowExpandable = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

"let g:NERDTreeDirArrowCollapsible = ''
"let g:NERDTreeDirArrowExpandable = ''

" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error

let g:NERDTreeExtensionHighlightColor['c'] = s:lightGreen " sets the color of css files to blue
let g:NERDTreeExtensionHighlightColor['h'] = s:brown " sets the color of css files to blue
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"-----------------------------------------------------------------------"
" coc.nvim 환경 설정
"-----------------------------------------------------------------------"
" Some servers have issues with backup files, see #649
set nobackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=1000

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
inoremap <silent><expr> <C-@> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
