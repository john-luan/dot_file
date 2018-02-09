" normal
set number " 显示行号
set ruler " 显示标尺
set cursorline " 高亮显示行
set cursorcolumn " 高亮显示列
set showcmd " 显示输入命令
set nowrap " 不要换行
set autoread " 自动读
set autowrite " 自动写
set nocompatible " 不使用vi兼容模式
set ignorecase " 搜索时忽略大小写
set relativenumber " 相对行

call has('python3')

" Tmux
if exists('$TMUX')
	set term=screen-256color
endif

" Indentation
set cindent
set autoindent
set cinoptions=:0 " 自动缩进时将case和switch对齐
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " 在注释中换行时不自动添加注释号，但是希望在C块注释中添加 *

" syntax
syntax enable
syntax on
colorscheme molokai
set t_Co=256
set background=dark
set listchars=tab:>-,trail:- " 显示<tab>和<space>
set list

" Fold
set foldenable " 启动 vim 时折叠代码
set foldmethod=syntax " 基于语法折叠
set backspace=indent,eol,start

" Ctags
set tags=tags;
set tags+=~/works/prj_stm/.stm_tags
set autochdir

" format
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Inoremap
inoremap / /*  */<left><left><left>
" ESC key remap
inoremap jk <esc>

" Plugin - vim indent guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Plugin - vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
let g:airline_theme="luna"

" Plugin - ctrlp
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'

" Plugin - slimv
let mapleader = ","
let g:slimv_swank_cmd = '! xterm -e sbcl --load ~/.vim/bundle/slimv/sle/start-swank.lisp&'

" Plugin - NERD Commenter
let g:mapleader = "," " 设置前缀符号为,
let g:NERDSpaceDelims = 1 " 在注释符后添加一个空格
let g:NERDCompactSexyComs = 1 " 使用紧凑的语法修饰多行注释
let g:NERDDefaultAlign = 'left' " 将行注释符左对齐
let g:NERDAltDelims_c = 1 " 设置默认语言定界符
let g:NERDCommentEmptyLines = 1 " 
let g:NERDTrimTrailingWhitespace = 1 " 

" Plugin - YouCompleteMe
set completeopt=longest,menu " 让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	 " 离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" 回车即选中当前项
" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

let g:syntastic_ignore_files=[".*\.py$"]
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0 " 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_collect_identifiers_from_tags_files = 1 " 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_comments_and_strings = 0 " 注释和字符串中的文字也会被收入补全
let g:ycm_min_num_of_chars_for_completion = 2 " 输入第2个字符开始补全
let g:ycm_cache_omnifunc = 0 " 禁止缓存匹配项,每次都重新生成匹配项0
let g:ycm_seed_identifiers_with_syntax = 1 " 开启语义补全
let g:ycm_complete_in_comments = 0 " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1 " 在字符串输入中也能补全
" 设置在下面几种格式的文件上屏蔽ycm
let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'nerdtree' : 1,
			\}
" 修改对C函数的补全快捷键，默认是CTRL + space，修改为ALT + ;
let g:ycm_key_invoke_completion = '<M-;>'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" 参考https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-62941322
" 解决ultisnips和ycm tab冲突
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key
" Enable tabbing through list of results
function! g:UltiSnips_Complete()
	call UltiSnips#ExpandSnippet()
	if g:ulti_expand_res == 0
		if pumvisible()
			return "\<C-n>"
		else
			call UltiSnips#JumpForwards()
			if g:ulti_jump_forwards_res == 0
				return "\<TAB>"
			endif
		endif
	endif
	return ""
endfunction

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

" Expand snippet or return
" 补全代码段或者返回
let g:ulti_expand_res = 0
function! Ulti_ExpandOrEnter()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res
        return ''
    else
        return "\<return>"
    endif
endfunction

" 设置空格作为主触发器
inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>
" 跳转到声明/定义
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Plugin - ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-e>"
let g:UltiSnipsSnippetDirectories=["bundle/vim-snippets/UltiSnips"]

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
" 文件跳转
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'asins/vimcdoc'
" vim的中文帮助
Plugin 'gdbmgr'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
" 代码结构分析
Plugin 'luochen1990/rainbow'
" 彩虹括号，用于lisp等语言的括号高亮
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" 没什么卵用，尽快自己用vimscript重写一个功能简单的
" Plugin 'dyng/ctrlsf.vim'
" Plugin 'godlygeek/tabular'
" Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Plugin 'ag.vim'
" 内容搜索，尚不明确
"Plugin 'Raimondi/delimitMate'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
filetype on
