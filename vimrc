""""""""""""""""""Bundles"""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
" "let path = '~/some/path/here'
" "call vundle#rc(path)
"
" " let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
"
" " The following are examples of different formats supported.
" " Keep bundle commands between here and filetype plugin indent on.
" " scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'davidhalter/jedi'
Bundle 'xolox/vim-lua-ftplugin'
Bundle 'xolox/vim-misc'
Bundle 'kien/ctrlp.vim'
Bundle 'elzr/vim-json'
Bundle 'bling/vim-airline'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" " scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
Bundle 'winmanager'
Bundle 'DoxygenToolkit.vim'
" " scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
" " ...
"
 filetype plugin indent on     " required
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible "不要使用vi的键盘模式，而是vim自己的  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   
" GVIM自身的设置  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
if has('gui_running')
    colorscheme torte    "solarized,desert,torte  主题颜色
else
    set background=dark        "背景色
    let g:solarized_termcolors= 16
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    colorscheme solarized "solarized,desert  主题颜色
endif
language messages zh_CN.utf-8      " 解决consle输出乱码 
"set background=dark        "背景色
set t_Co=256            "256色
set guioptions-=T       " 隐藏工具栏  
set guifont=Monaco\ 10          " 字体 && 字号  
set noerrorbells        " 关闭错误提示音  
set nobackup            " 不要备份文件  
set linespace=0         " 字符间插入的像素行数目  
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示  
"set novisualbell        " 不要闪烁   
set scrolloff=3         " 光标移动到buffer的顶部和底部时保持3行距离  
set mouse=a             " 可以在buffer的任何地方 ->  
set selection=exclusive         " 使用鼠标（类似office中 ->  
set selectmode=mouse,key        " 在工作区双击鼠标定位）  
set cursorline                  " 突出显示当前行  
set nu                     " 显示行号  
set whichwrap+=<,>,h,l        " 允许backspace和光标键跨越行边界   
set completeopt=longest,menu    "按Ctrl+N进行代码补全  
set keymodel=startsel,stopsel   "使用“Shift + 方向键”选择文本,否则代表向指定方向跳一个单词 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   
" 文本格式和排版   
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""   
set list                " 显示Tab符，->  
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. 
set tabstop=4           " 制表符为4  
set autoindent          " 自动对齐（继承前一行的缩进方式）  
set smartindent         " 智能自动缩进（以c程序的方式）  
set softtabstop=4        " 敲入tab键时实际占有的列数
set shiftwidth=4        " 换行时行间交错使用4个空格  
"set noexpandtab        " 不要用空格代替制表符  
set expandtab            " 用空格代替制表符  
set cindent                " 使用C样式的缩进  
set smarttab            " 在行和段开始处使用制表符  
set nowrap              " 不要换行,显示一行   
"set ambiwidth=double    " Unicode中,防止特殊符号无法正常显示,使用宽字符 
set selection=inclusive    "指定在选择文本时，光标所在位置也属于被选中的范围。如果指定 selection=exclusive 的话，可能会出现某些文本无法被选中的情况。   
set selectmode=mouse,key

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 状态行(命令行)的显示  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set cmdheight=2          " 命令行（在状态行下）的高度，默认为1，这里是2  
set ruler                " 右下角显示光标位置的状态行  
set laststatus=2         " 开启状态栏信息   
set wildmenu             " 增强模式中的命令行自动完成操作   
  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 文件相关  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set encoding=utf-8      " 设置vim的工作编码为utf-8，如果源文件不是此编码，vim会进行转换后显示  
set fileencoding=utf-8      " 让vim新建文件和保存文件使用utf-8编码  
set fileencodings=utf-8,gbk,gb18030,cp936,latin-1     "打开文件的时候进行解码的猜测列表 
"filetype on                  " 侦测文件类型  
"filetype indent on               " 针对不同的文件类型采用不同的缩进格式  
"filetype plugin on               " 针对不同的文件类型加载对应的插件 
syntax enable
syntax on                    " 语法高亮  
"cd /home/ray/Code             " 默认保存路径,会影响默认工作路径
  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 查找  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
set hlsearch                 " 开启高亮显示结果  
set nowrapscan               " 搜索到文件两端时不重新搜索  
set incsearch                " 开启实时搜索功能  
  
  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 语言的编译和运行             
" 支持的语言：java         F5编译(保存+编译)  F6运行  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
func! CompileCode()  
    exec "w"  
    if &filetype == "java"  
        exec "!javac -encoding utf-8 %"  
    endif  
endfunc  
func! RunCode()  
    if &filetype == "java"  
        exec "!java -classpath %:h; %:t:r"  
    endif  
endfunc  

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  

function! NERDTree_IsValid()  
    return 1  
endfunction  


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 实用功能  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"--------启用代码折叠，用空格键来开关折叠   
set foldenable           " 打开代码折叠  
set foldmethod=syntax        " 选择代码折叠类型  
set foldlevel=100            " 禁止自动折叠  
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR>   

"remember last update or view postion"
" Only do this part when compiled with support for autocommands 
if has("autocmd")
    " In text files, always limit the width of text to 78 characters 
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position 
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \ exe "normal g'\"" |
                \ endif 
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 快捷键  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
let mapleader=','     "定义<leader>键
nmap <F2> :NERDTreeToggle <CR>
nmap <F3> :Tlist <CR>
nmap <F4> :WMToggle <CR>
" F5 保存+编译  
map <F5> :call CompileCode()<CR>  
"  F6 运行  
map <F6> :call RunCode()<CR> 
nnoremap <leader>1 :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>2 :YcmCompleter GoToDefinition<CR>
nnoremap <leader>3 :YcmCompleter GoToDefinitionElseDeclaration<CR>
" format json
"au FileType json setlocal equalprg=python3\ -m\ json.tool
" format json
map <F8> <ESC>:%!python3 -m json.tool<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" 插件  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" MiniBufExplorer       
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1   
" tablist
let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  
" NERDTree
let g:NERDTree_title="[NERDTree]"  
" winManager
let g:winManagerWindowLayout="NERDTree|TagList" 
" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
" eclim, this setting is set to work with YouCompleteMe
"let g:EclimCompletionMethod = 'omnifunc'
" supertab
let g:SuperTabDefaultCompletionType="context"
" vim-airline
let g:airline_theme='badwolf'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
"let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
"let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Ray/rayydl@gmail.com"
