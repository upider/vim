if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif
set helplang=cn
set encoding=utf-8
set nocompatible


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置 leader 键，例子为空号键，也可以设置为其他的
let mapleader=" "
" 置快捷键，关闭一个窗口
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
" 映射全选+复制 ctrl+a
nnoremap <C-A> ggVGY
" 选中状态下 Ctrl+c 复制
vnoremap <C-c> "+y

""实用设置
" 设置当文件被改动时自动载入
set autoread
"代码补全
set completeopt=preview,menu
"允许插件
filetype plugin on
"共享剪贴板
set clipboard=unnamed
"从不备份
set nobackup
"自动保存
"主题
"set background=dark
colorscheme molokai
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
"set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set foldenable              " 开始折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
syntax enable
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
"set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 显示颜色
set t_Co=256
set laststatus=2
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=1
"增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 显示Tab符
"set list
"set listchars=tab:\|\ ,trail:.,extends:>,precedes:<
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
"set showmatch
"显示未完成指令
set showcmd
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
" 为C程序提供自动缩进
set smartindent
"开启语法高亮
syntax on
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
filetype plugin indent on
"打开文件类型检测, 加了这句才可以用智能补全
""""""""""""""""""""""""""""""""""""""""""""
"打开鼠标的复制粘贴
set completeopt=longest,menu

" Smart way to move between windows {{{
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let g:togglecursor_default = "block"

"输入法切换
"let g:XkbSwitchEnabled = 1

set cursorline
"hi CursorLine   cterm=underline ctermbg=none  ctermfg=none guibg=NONE guifg=NONE
set cursorcolumn
"hi CursorColumn cterm=none ctermbg=none  ctermfg=none guibg=NONE guifg=NONE

nmap <leader>' :term<CR>
"切换Buffer
nnoremap <TAB> :bnext<CR>
nmap<leader>1 :b1<CR>
nmap<leader>2 :b2<CR>
nmap<leader>3 :b3<CR>
nmap<leader>4 :b4<CR>
nmap<leader>5 :b5<CR>
nmap<leader>6 :b6<CR>
nmap<leader>7 :b7<CR>
nmap<leader>8 :b8<CR>
nmap<leader>9 :b9<CR>


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"auto-format
"F6自动格式化代码并保存
noremap <F6> :Autoformat<CR>:w<CR><CR>
let g:autoformat_verbosemode=1

"多光标
let g:multi_cursor_use_default_mapping=0

""ale
highlight ALEWarning ctermbg=red
highlight ALEError ctermbg=red
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_echo_cursor = 1
"use the quickfix list instead of the loclist
let g:ale_open_list = 1
let g:ale_keep_list_window_open = 1
let g:ale_set_quickfix = 0
let g:ale_keep_list_window_open = 0
let g:ale_set_loclist = 0
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 0
let g:ale_c_clang_options = 'std=c11 -Wall'
let g:ale_cpp_clangcheck_option = 'std=c11 -Wall'
let g:ale_cpp_clang_gcc_options = 'std=c11 -Wall'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'c++': ['clang++'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}
nmap <leader>gd :ALEGoToDefinition<CR>


" YouCompleteMe:语句补全插件
set runtimepath+=~/.vim/bundle/YouCompleteMe
autocmd InsertLeave * if pumvisible() == 0|pclose|endif		"离开插入模式后自动关闭预览窗口"
let g:ycm_auto_trigger=1
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于tags标签引擎
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释与字符串中的内容也用于补全
"let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_complete_in_comments = 1
let g:ycm_key_invoke_completion=""
let g:ycm_confirm_extra_conf = 0                            "关闭加载.ycm_extra_conf.py提示
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                         " 禁用语法检查
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>     " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项 "
" 让补全行为与一般的IDE一致
"let g:ycmErrorSign = '✗'
"let g:ycmWarningSign = '⚡'
set completeopt=longest,menu
"let g:ycm_extra_conf_vim_data = 1
"let g:ycm_extra_conf_globlist = ['~/root_v6.14.04.source/build/include/*','~/Gobang/*']

"OmniCppComplete
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1
"let OmniCpp_ShowPrototypeInAbbr = 1 show function parameters
"let OmniCpp_MayCompleteDot = 1 autocomplete after .
"let OmniCpp_MayCompleteArrow = 1 autocomplete after ->
"let OmniCpp_MayCompleteScope = 1 autocomplete after ::
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"automatically open and close the popup menu / preview window
"autocmd CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"set completeopt=menuone,menu,longest,preview


"配置ag从当前项目开始搜寻
let g:ag_working_path_mode="r"
let g:ag_highlight=1
" for easy using sliver search
nmap <leader>f :norm yiw<CR>:Ag! -t -Q"<C-R>""
" Locate and return character "above" current cursor position.
function! LookUpwards()
	    let column_num = virtcol('.')
	    let target_pattern = '\%' . column_num . 'v.'
	    let target_line_num = search(target_pattern . '*\S', 'bnW')
	    if !target_line_num
	        return""
	    else
	        return matchstr(getline(target_line_num), target_pattern)
	    endif
endfunction
imap <silent> <C-Y> <C-R><C-R>=LookUpwards()<CR>



"vim-airlineg_highlight=1配置:优化vim界面 airline设置
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" 使用powerline打过补丁的字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = '▶'
let g:airline#extensions#tabline#right_sep = '◀'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '◀'
let g:airline_left_alt_sep = '❯'
let g:airline_right_alt_sep = '❮'
let g:airline_detect_modified=1
" tabline中未激活buffer两端的分隔字符
"/*let g:airline#extensions#tabline#left_alt_sep = '>'*/
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline#extensions#bufferline#enabled = 1

"let g:miniBufExplMapWindowNavVim = 0
"let g:miniBufExplMapWindowNavArrows = 0
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
""解决FileExplorer窗口变小问题
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplorerMoreThanOne=2
"let g:miniBufExplCycleArround=1
"" 默认方向键左右可以切换buffer
"nnoremap <TAB> :MBEbn<CR>
"nnoremap <s-TAB> :MBEbp<CR>
"noremap <leader>bn :MBEbn<CR>
"noremap <leader>bp :MBEbp<CR>
"noremap <leader>bd :MBEbd<CR>

"...........tabar................
nmap <C-m> :TagbarToggle<CR>

"!ctags -R --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q

"更新ctags标签文件快捷键设置
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"当前工作路径下的tags文件
set tags=tags;
set autochdir
set tags+=~/.vim/tags/cpp
"加入root的函数库
set tags+=~/.vim/tags/root
"加入C++库函数
set tags+=~/.vim/tags/cpp
"加入boost库
set tags+=~/.vim/tags/boost
"加入clang库
set tags+=~/.vim/tags/clang
"加入python库
set tags+=~/.vim/tags/python

"NERDTree 配置:ctrl+n快捷键显示当前目录树
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
"打开nerdtree
"map <C-n> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
let NERDTreeAutoCenter=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示隐藏文件
"let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ 'Ignored'   : '☒',
			\ "Unknown"   : "?"
			\ }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.h,.sh,.java,Python文件，自动插入文件头
autocmd BufNewFile *.cpp,*.sh,*.java,*.c exec ":call SetTitle()"
""定义函数SetTitle，自动插入文件头注释
func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1, "##########################################################################")
		call append(line("."), "# File Name: ".expand("%"))
		call append(line(".")+1, "# Author: yuzezhong")
		call append(line(".")+2, "# mail: 1445277435@qq.com")
		call append(line(".")+3, "# Created Time: ".strftime("%c"))
		call append(line(".")+4, "#########################################################################")
		call append(line(".")+5, "#!/bin/zsh")
		call append(line(".")+6, "PATH=/home/edison/bin:/home/edison/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/work/tools/gcc-3.4.5-glibc-2.3.6/bin")
		call append(line(".")+7, "export PATH")
		call append(line(".")+8, "")
	else
		call setline(1, "/*************************************************************************")
		call append(line("."), "	> File Name: ".expand("%"))
		call append(line(".")+1, "	> Author: yuzezhong")
		call append(line(".")+2, "	> Mail: 1445277435@qq.com ")
		call append(line(".")+3, "	> Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <iostream>")
		"call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快速运行程序
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec '!g++ % -o %< -std=c++11'
		exec '!time ./%<'
	elseif &filetype == 'cpp'
		exec '!g++ % -o %< -std=c++11'
		exec '!time ./%<'
	elseif &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'sh'
		:!time bash %
	endif
endfunc


"CMake语法高亮
au BufNewFile,BufRead CMakeLists.txt set filetype=cmake
"运行makefile
nmap <leader>m :wa<CR>:make<CR>:copen<CR>
"nmap <leader>m :wa<CR>:make<CR>:cc<CR>

