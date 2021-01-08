
if has('win32') || has('win64') " Windows下设置运行环境路径 
    set runtimepath+=$VIM/.vim
endif

let mapleader = ";"	        	" 定义快捷键的前缀，即<Leader>
"-------------------------------
"=> 搜索、vim 命令补全
"-------------------------------
set incsearch		        	" 开启实时搜索功能
set ignorecase		        	" 搜索时大小写不敏感
set nocompatible	        	" 关闭兼容模式
set wildmenu		        	" vim 自身命令行模式智能补全
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 文件类型侦测
"-------------------------------
filetype on		    	        " 开启文件类型侦测
filetype plugin on	        	" 根据侦测到的不同类型加载对应的插件	
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 添加辅助信息
"-------------------------------
set ruler		            	" 显示光标当前位置
set number		            	" 开启行号显示
set mouse=a		            	" 允许使用鼠标点击定位  
set showcmd		            	" 输入的命令显示出来
set hlsearch		        	" 高亮显示搜索结果
set showmatch		        	" 设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set smarttab
set cursorline		        	" 高亮显示当前行
set viminfo+=!		        	" 保存全局变量
set scrolloff=3		        	" 光标移动到buffer的顶部和底部时保持3行距离 
set cmdheight=2		        	" 总是显示状态行
set history=1000	        	" 历史记录数
set cursorcolumn	        	" 高亮显示当前列
set laststatus=2	        	" 总是显示状态栏
set iskeyword+=_,$,@,%,#,-  	" 带有如下符号的单词不要被换行分割
" autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 其他美化
"-------------------------------
set nowrap		            	" 禁止折行
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 语法高亮
"-------------------------------
syntax enable		        	" 开启语法高亮功能
syntax on		            	" 允许用指定语法高亮配色方案替换默认方案
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 代码缩进
"-------------------------------
filetype indent on		        " 自适应不同语言的智能缩进
set autoindent		        	" 自动缩进
set cindent		    	        " (cindent是特别针对 C语言语法自动缩进）
set expandtab		        	" 将制表符扩展为空格
set tabstop=4		        	" 设置编辑时制表符占用空格数
set shiftwidth=4	        	" 设置格式化时制表符占用空格数
set softtabstop=4	        	" 让 vim 把连续数量的空格视为一个制表符
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 基于缩进或语法进行代码折叠
"-------------------------------
set foldenable		        	" 允许折叠 
"set foldmethod=manual	        " 手动建立折叠
"set foldmethod=indent	        " 基于缩进进行折叠	
set foldmethod=syntax       	" 基于语法进行折叠
set nofoldenable	        	" 启动 vim 时关闭折叠代码
" <操作>：za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 营造专注氛围
"-------------------------------
set guioptions-=l	        	" 禁止显示滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m		        " 禁止显示菜单和工具条
set guioptions-=T

"set gcr=a:block-blinkon0	    " 禁止光标闪烁(与光标变细有冲突)
" 使得terminal的光标变为细线，而不是默认的粗条。这个在vim的普通模式和插入模式都会生效。
set gcr=n-v-c:ver25-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 取消自动备份及产生swp文件
"-------------------------------
set nobackup  
set nowb
set noswapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 环境恢复
"-------------------------------
" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存快捷键
"map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
"map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 设定编码
"-------------------------------
set enc=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936,gb18030,big5,euc-jp,euc-kr,latin1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 设定默认解码
"-------------------------------
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 中文菜单支持
"-------------------------------
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> vim help手册汉化
"-------------------------------
if version >= 603
    set helplang=cn
    set encoding=utf-8
    set fileencoding=utf-8
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> Pathogen load
"-------------------------------
call pathogen#infect()
call pathogen#helptags()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"==> sdcv词典
"-------------------------------
"set keywordprg=sdcv     	    " 直接查询  shift + k
nmap F :call Mydict()<CR>   	" 借助.vim/plugin中的scad.vim查询  shift + f 或 F
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> Tmux设置
"-------------------------------
if exists('$TMUX')
  set term=screen-256color
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> vim 查看 man文档
"-------------------------------
source $VIMRUNTIME/ftplugin/man.vim	" 查看方法输入:Man api_name
cmap man Man			        " 映射之后就可以少按一下 Shift 键。
nmap M :Man <cword><CR>	        " 在普通模式下按下 M （大写）即可启动 man 查看光标下的函数。
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> 设置tags与头文件  
"-------------------------------
"set path+=/usr/include/     	" Linux下
set path+=D:\ProSoftware\MinGW\LLVM\include" windows下
set tags=./.tags;,.tags
set autochdir                   " 自动切换当前目录为当前文件所在的目录
set dictionary+=D:\ProSoftware\Vim\vimfiles\dict\csharp.dict    " 字典补全
nmap <Leader>tn :tnext<CR>  	" <Leader>tn : 正向遍历同名标签
nmap <Leader>tp :tprevious<CR>	" <Leader>tp : 反向遍历同名标签
" <使用>  ctrl + ] 是进入下级查找; ctrl + t 是返回上级的查找； 键入快捷键 g]，vim 将罗列出名为 printMsg 的所有标签候选列表，按需选择键入编号即可跳转进入
" <查看头文件>  按下gf键便便可以进入到相应头文件，如果要后退可以ctrl+o
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> vim默认窗口大小与字体设置
"-------------------------------
if has("gui_running") 
    " GUI is running or is about to start.
    " Maximize gvim window (for an alternative on Windows, see simalt below).	
    set lines=43 columns=100 linespace=0       " GVIM设置行数与列数
    if has('gui_win32')
        "set guifont=DejaVu_Sans_Mono:h10:cANSI
        set guifont=Courier_New:h10:cANSI
    else
        set guifont=DejaVu\ Sans\ Mono\ 15
        "set guifont=Monospace\ 15
    endif
else
    " This is console Vim.
    if exists("+lines")
        set lines=41
    endif
    if exists("+columns")
        set columns=100
    endif
endif
" Linux 下各 GUI 软件约定使用 F11 全屏，最好遵守约定
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> vim-Plug插件管理
"-------------------------------
call plug#begin('$VIM\.vim\bundle')

      " languange "
"----------------------
" C/C++ {

    Plug 'octol/vim-cpp-enhanced-highlight'		" 语法高亮

"	}

" C# {

"   Plug 'OmniSharp/omnisharp-vim'
 
"   }

" Java {

    Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
       autocmd FileType java setlocal omnifunc=javacomplete#Complete    " 使用vim自带补全快捷键补全

"	}

" HTML & CSS {

    Plug 'mattn/emmet-vim'			        	" HTML书写快捷键
       let g:user_emmet_leader_key = '<C-Z>'	" ctrl + z + , 键触发

    Plug 'ap/vim-css-color'                     " css语法高亮

"	}

" JavaScript {

"  Plug 'ternjs/tern_for_vim', {'do': 'npm install'}  " JavaScript补全
"      let g:tern_show_argument_hints = 'on_hold'   " 鼠标停留在方法内时显示参数提示
"      let g:tern_show_signature_in_pum = 1         " 补全时显示函数类型定义
"      autocmd FileType javascript nnoremap <Leader>d :TernDef<CR>
"      autocmd FileType javascript setlocal omnifunc=tern#Complete  " 使用vim自带补全快捷键补全
  
    Plug 'pangloss/vim-javascript'              " JavaScript语法突出显示和改进的缩进
       let g:javascript_plugin_jsdoc = 1        " 启用JSDocs的语法高亮
       let g:javascript_plugin_ngdoc = 1        " 为NGDocs启用一些额外的语法高亮显示,需要启用JSDoc插件
       let g:javascript_plugin_flow = 1         " 启用Flow的语法突出显示

"	}

" Lisp {

"   Plug 'kovisoft/slimv'                       " 需要安装clisp(<leader>c 开启)
"      let g:slimv_swank_cmd = '!start clisp -i "D:/ProSoftware/Vim/.vim/bundle/slimv/slime/start-swank.lisp"'

"   }

" Python {

"   Plug 'davidhalter/jedi-vim'			        " python补全
    
"	}

" Bash {

"   Plug 'WolfgangMehner/bash-support'

"	}

" Go {

"   Plug 'fatih/vim-go', { 'tag': '*' }
"   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }    "代码补全

"	}

" 编译、运行 {
    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
       let g:asyncrun_open = 6
       let g:asynctasks_term_pos = 'tab'
       let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
       noremap <silent><f5> :AsyncTask file-run<cr>
       noremap <silent><f9> :AsyncTask file-build<cr>
" }

      " 辅助插件 "
"----------------------
    Plug 'mhinz/vim-signify'			        " 版本控制系统 
    Plug 'jiangmiao/auto-pairs'		        	" 符号键配对
    Plug 'tpope/vim-surround'		        	" 快速更改标点符号
    Plug 'vim-scripts/winmanager'		    	" 窗口管理
    Plug 'liuchengxu/eleline.vim'               " 状态栏插件
       set laststatus=2

"   Plug 'terryma/vim-multiple-cursors'         " 多光标编辑
 
    Plug 'Chiel92/vim-autoformat'			    " 代码格式化
       noremap <F7> :Autoformat<CR>             " 格式化快捷键 <F7>
"      au BufWrite * :Autoformat                " 自动格式化代码，针对所有支持的文件

    Plug 'luochen1990/rainbow'                  " 彩虹括号(适合lisp)
"      let g:rainbow_active = 1                 " 默认打开/关闭 
       nmap <Leader><F4> :RainbowToggle<CR>     " <Leader><F4> : 彩虹括号开关键

    Plug 'Yggdroot/indentLine'                  " 相同缩进的代码关联
   	   let g:indentLine_enabled = 1			    " 默认开启/关闭
   	   let g:indentLine_char = '|'			    " 改变缩进对齐线

    Plug 'mbbill/undotree'                      " 撤销最近一步或多步操作
       set undodir=~/.undodir                   " 开启保存 undo 历史功能
       set undofile
       nnoremap <Leader>ud :UndotreeToggle<CR>  " <Leader>ud : 调用 gundo 树

    Plug 'fholgado/minibufexpl.vim'		    	" 多文档编辑
       map <Leader>mt :MBEToggle<cr>	    	" <Leader>mt : 显示/隐藏 MiniBufExplorer 窗口

       map <C-Tab> :MBEbn<cr>		    	    " GVim下buffer切换快捷键(ctrl + tab: 跳转后一个窗口; ctrl + shift + tab: 跳转前一个窗口)
       map <C-S-Tab> :MBEbp<cr>
	
    Plug 'scrooloose/nerdtree'		        	" 显示文件界面
    Plug 'Xuyuanp/nerdtree-git-plugin'          " 对git进行支持
       let NERDTreeWinSize = 32                 " 设置NERDTree子窗口宽度
       let NERDTreeWinPos = "left"              " 设置NERDTree子窗口位置
       let NERDTreeShowHidden = 1               " 显示隐藏文件
       let NERDTreeMinimalUI = 0                " NERDTree 子窗口中不显示冗余帮助信息
       let NERDTreeAutoDeleteBuffer = 1         " 删除文件时自动删除文件对应 buffer
       let g:NERDTreeGitStatusIndicatorMapCustom = {
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

       nmap <Leader><F2> :NERDTreeToggle<CR>    " <Leader><F2> : 使用 NERDTree 插件查看工程文件快捷键

    Plug 'scrooloose/nerdcommenter'			    " 注释 
       let g:NERDSpaceDelims = 1                " 默认注释分隔符后添加空格
       let g:NERDAltDelims_java = 1             " 设置语言默认使用其备用分隔符
       let g:NERDCompactSexyComs = 1            " 用于美化多行注释紧凑语法
       let g:NERDDefaultAlign = 'left'          " 将对齐行注释分隔符对齐，而不是按照代码缩进
       let g:NERDCommentEmptyLines = 1          " 许评论和反转空行（在评论区域时很有用）
       let g:NERDTrimTrailingWhitespace = 1     " 消注释时，启用修剪尾随空格
       let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }    " 加自己的自定义格式或覆盖默认值

" 文本对象 {

    Plug 'kana/vim-textobj-user'
    Plug 'kana/vim-textobj-indent'
    Plug 'kana/vim-textobj-syntax'
    Plug 'kana/vim-textobj-function', { 'for':['c', 'cpp', 'vim', 'java'] }
    Plug 'sgur/vim-textobj-parameter'

"   diw 删除光标所在单词，ciw 改写单词，vip 选中段落等，ci"/ci( 改写引号/括号中的内容
"   它新定义的文本对象主要有：
"       i, 和 a, ：参数对象，写代码一半在修改，现在可以用 di, 或 ci, 一次性删除/改写当前参数
"       ii 和 ai ：缩进对象，同一个缩进层次的代码，可以用 vii 选中，dii / cii 删除或改写
"       if 和 af ：函数对象，可以用 vif / dif / cif 来选中/删除/改写函数的内容

"   } 

" 快速搜索/移动 {
       
    Plug 'haya14busa/incsearch.vim'		    	
       let g:incsearch#auto_nohlsearch = 1
       map /  <Plug>(incsearch-forward)
       map ?  <Plug>(incsearch-backward)
       map g/ <Plug>(incsearch-stay)
       map n  <Plug>(incsearch-nohl-n)
       map N  <Plug>(incsearch-nohl-N)
       map *  <Plug>(incsearch-nohl-*)
       map #  <Plug>(incsearch-nohl-#)
       map g* <Plug>(incsearch-nohl-g*)
       map g# <Plug>(incsearch-nohl-g#)

   
    Plug 'Yggdroot/LeaderF'

"	}

" 语法检查 {

"检查器：Python(flake8[还要安装python-pip])、JavaScript(Jshint[安装npm and nodejs])

	Plug 'w0rp/ale'
	   let g:ale_enabled = 1			        " 默认开启/关闭
	   let g:ale_open_list = 0			        " 打开列表
       let g:ale_disable_lsp = 1
       let g:ale_lint_on_enter = 1   		    " 打开文件时是否进行检查
	   let g:ale_set_highlights = 1			    " 错误高亮
	   let g:ale_list_window_size = 5		    " 修改报错误的窗口高度
       let g:ale_completion_enabled = 1         " "
       let g:ale_completion_autoimport = 1
   	   let g:ale_sign_column_always = 1		    " 始终开启标志列
       let g:ale_keep_list_window_open = 0  	" 错误消失后窗口打开
	   let g:ale_emit_conflict_warnings = 0   	" 防止报错(syntastic开启时打开)

	   let g:ale_echo_msg_error_str = 'E'		" 显示Linter名称,出错或警告等相关信息
   	   let g:ale_echo_msg_warning_str = 'W'
   	   let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"	   let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']	"在vim自带的状态栏中整合ale
      
       set omnifunc=ale#completion#OmniFunc

       nmap <Leader>at :ALEToggle<CR>           " <Leader>at : 触发/关闭语法检查
       nmap <Leader>ad :ALEDetail<CR>           " <Leader>ad : 查看错误或警告的详细信息
   	   nmap sn <Plug>(ale_next_wrap)            " 普通模式下，sp 前往上一个错误或警告，sn 前往下一个错误或警告
       nmap sp <Plug>(ale_previous_wrap)		

"	   let g:ale_linters = {'java': 'javac'}	" 对******禁用语法检查

"	   let g:ale_sign_error = '>>'   	    	" 定制标志
"	   let g:ale_sign_warning = '--'

       let g:ale_linters = {
       \   'c': ['gcc'],
       \   'c++': ['gcc'], 
       \}

"      set statusline+=%{LinterStatus()}
	   set statusline+=%*	   

"	}

" 颜色配置 

	Plug 'tomasr/molokai'
   	   let g:rehash256 = 1
  	   let g:molokai_original = 1

     
"   Plug 'altercation/vim-colors-solarized'
"      let g:solarized_termcolors = 256
"      let g:solarized_termtrans = 0		    " 背景透明化
"      let g:solarized_contrast = "normal"
"      let g:solarized_visibility = "normal"

	   if has('gui_running')
          set background=light
       else
	 	  set t_Co=256
          set background=dark
       endif

"   colorscheme solarized
	colorscheme molokai

"	}

" 补全 {

    Plug 'prabirshrestha/asyncomplete.vim'      " 异步补全
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
       let g:asyncomplete_remove_duplicates = 1 " 删除重复项   
       
       let g:asyncomplete_smart_completion = 1  " 模糊智能完成
       let g:asyncomplete_auto_popup = 1

       set completeopt+=preview                 " 窗口预览
       autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif    " 完成后自动关闭窗口

"   Plug 'wellle/tmux-complete.vim'             " Tmux   
"   Plug 'ryanolsonx/vim-lsp-typescript'        " TypeScript
    Plug 'ryanolsonx/vim-lsp-javascript'        " JavaScript 
    Plug 'ryanolsonx/vim-lsp-python'            " Python
    Plug 'yami-beta/asyncomplete-omni.vim'      " Omnifunc
    Plug 'prabirshrestha/asyncomplete-file.vim'     " File
    Plug 'prabirshrestha/asyncomplete-buffer.vim'   " 缓冲区
    Plug 'prabirshrestha/asyncomplete-emmet.vim'    " HTML补全
    Plug 'keremc/asyncomplete-clang.vim'

    if has('python3')                           " 片段补全
        Plug 'SirVer/ultisnips'
        Plug 'honza/vim-snippets'
        Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
    endif

    if executable('ctags')                       " 自动生成tags
        Plug 'prabirshrestha/asyncomplete-tags.vim'
        Plug 'ludovicchabant/vim-gutentags'
    endif

       " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
       let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

       let g:gutentags_ctags_tagfile = '.tags'  " 所生成的数据文件的名称

       let g:gutentags_modules = []             " 同时开启 ctags 和 gtags 支持：
       if executable('ctags')
           let g:gutentags_modules += ['ctags']
       endif
       if executable('gtags-cscope') && executable('gtags')
           let g:gutentags_modules += ['gtags_cscope']
       endif

       " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
       let g:gutentags_cache_dir = expand('~/.cache/tags')

       " 配置 ctags 的参数
       let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
       let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
       let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

       " 禁用 gutentags 自动加载 gtags 数据库的行为
       let g:gutentags_auto_add_gtags_cscope = 0

" 安装python补全要安装 pip install python-language-server
" 安装c/c++补全要安装clang
" 安装JavaScript补全要安装 npm install -g typescript typescript-language-server 
" 后在根目录下创建 tsconfig.json (TypeScript) 或 package.json (JavaScript)
"   }

" 显示文件函数 {

    Plug 'liuchengxu/vista.vim'
       nnoremap <Leader><F3> :Vista<CR> 	    " <Leader><F3> : 设置显示/隐藏标签列表子窗口的快捷键

" 	}

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> Quickly Run
"-------------------------------


" map <F6> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!gcc % -g -o %<"
    exec "!gdb %<"
endfunc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=> Plug中插件配置 
"-------------------------------

" Rainbow {
    let g:rainbow_conf = {
    	\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    	\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    	\	'operators': '_,_',
    	\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    	\	'separately': {
    	\		'*': {},
    	\		'tex': {
    	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    	\		},
    	\		'lisp': {
    	\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    	\		},
    	\		'vim': {
    	\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    	\		},
    	\		'html': {
    	\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    	\		},
    	\		'css': 0,
    	\	}
    	\}
"   }

" ALE {
    function! LinterStatus() abort
        let l:counts = ale#statusline#Count(bufnr(''))
    
        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors

        return l:counts.total == 0 ? 'OK' : printf(
        \   '%d warning(s),%d error(s)',
        \   all_non_errors,
        \   all_errors
        \)
    endfunction

"   }

" asyncomplete {
    " C/C++
    if executable('clangd')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd']},
            \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
            \ })
    endif

    autocmd User asyncomplete_setup call asyncomplete#register_source(
        \ asyncomplete#sources#clang#get_source_options({
        \     'config': {
        \         'clang_path': 'D:\ProSoftware\MinGW\LLVM\bin\clang.exe',
        \         'clang_args': {
        \             'default': ['-I\D:\ProSoftware\MinGW\LLVM\include'],
        \             'cpp': ['-std=c++11', '-I\D:\ProSoftware\MinGW\LLVM\include']
        \         }
        \     }
        \ }))

    " TypeScript && JavaScript
    if executable('typescript-language-server')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'typescript-language-server',
            \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
            \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
            \ 'whitelist': ['typescript', 'typescript.tsx'],
            \ })
    endif

    if executable('typescript-language-server')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'typescript-language-server',
            \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
            \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
            \ 'whitelist': ['typescript', 'javascript', 'javascript.jsx']
            \ })
    endif

    " Python
    if executable('pyls')
        au User lsp_setup call lsp#register_server({
            \ 'name': 'pyls',
            \ 'cmd': {server_info->['pyls']},
            \ 'whitelist': ['python'],
            \ 'workspace_config': {'pyls': {'plugins': {'pydocstyle': {'enabled': v:true}}}}
            \ })
    endif

    " UltiSnips
    if has('python3')
        let g:UltiSnipsExpandTrigger="<c-z>"
        call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
            \ 'name': 'ultisnips',
            \ 'whitelist': ['*'],
            \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
            \ }))
    endif
    
    " Onifunc
    call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
        \ 'name': 'omni',
        \ 'whitelist': ['*'],
        \ 'blacklist': ['c', 'cpp'],
        \ 'completor': function('asyncomplete#sources#omni#completor')
        \  }))

    " Buffer 
    call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
        \ 'name': 'buffer',
        \ 'whitelist': ['*'],
        \ 'blacklist': ['go'],
        \ 'priority': 3,
        \ 'completor': function('asyncomplete#sources#buffer#completor'),
        \ }))

    " Tags
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#tags#get_source_options({
        \ 'name': 'tags',
        \ 'whitelist': ['*'],
        \ 'priority': 3,
        \ 'completor': function('asyncomplete#sources#tags#completor'),
        \ 'config': {
        \    'max_file_size': 50000000,
        \  },
        \ }))

    " Tmux
    let g:tmuxcomplete#asyncomplete_source_options = {
            \ 'name':      'tmuxcomplete',
            \ 'whitelist': ['*'],
            \ 'priority': 3,
            \ 'config': {
            \     'splitmode':      'words',
            \     'filter_prefix':   1,
            \     'show_incomplete': 1,
            \     'sort_candidates': 0,
            \     'scrollback':      0,
            \     'truncate':        0
            \     }
            \ }

    " File
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
        \ 'name': 'file',
        \ 'whitelist': ['*'],
        \ 'priority': 10,
        \ 'completor': function('asyncomplete#sources#file#completor')
        \ }))

    " HTML
    au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emmet#get_source_options({
    \ 'name': 'emmet',
    \ 'whitelist': ['html'],
    \ 'completor': function('asyncomplete#sources#emmet#completor'),
    \ }))


" }
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"-------------------------------
"=>  vundle config
"-------------------------------
let $VUNDLE_CONFIG = $CONFIG_DIR.".vimrc_vundle"
if filereadable(expand($VUNDLE_CONFIG))
  source $VUNDLE_CONFIG
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


