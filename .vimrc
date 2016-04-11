set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'molokai' 
Plugin 'taglist.vim'
Plugin 'Auto-Pairs'
Plugin 'neocomplcache'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"********************************************************
"                   一般性配置                          *
"********************************************************
"关闭vim一致性原则
set nocompatible
set ru 
"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd
"设置历史记录条数
set history=500
"设置匹配模式
"set showmatch
"auto indent
set autoindent
"开启语法高亮功能
syntax enable
syntax on
"设置搜索时忽略大小写
set ignorecase

set is
set whichwrap+=<,>,h,l
set encoding=utf-8
set langmenu=zh_CN.UTF-8 
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
set clipboard=unnamedplus

set ambiwidth=double 
filetype plugin indent on 
set sw=4 "自动缩进的时候，缩进尺寸为 4 个空格。 
set ts=4  "Tab 宽度为 4 个字符
set et
set smarttab 
"set spell "打开拼写检查。拼写有错的单词下方会有红色波浪线，将光标放在单词上，按 z=就会出现拼写建议，按 ]s 可以直接跳到下一个拼写错误处。 
set lbr "不在单词中间断行。
set fo+=mB "打开断行模块对亚洲语言支持。m 表示允许在两个汉字之间断行，即使汉字之间没有出现空格。B 表示将两行合并为一行的时候，汉字与汉字之间不要补空格。
"set tw=78 "设置光标超过 78 列的时候折行
set cindent
set cino=:0g0t0(sus "设定 C/C++ 风格自动缩进的选项
set autoindent
set selection=inclusive 
set wildmenu "显示命令补全   
set mousemodel=popup "当右键单击窗口的时候，弹出快捷菜单
"set guifont=  "设置字体
if (has("gui_running"))
" 图形界面下的设置
    set go=aAce "去掉难看的工具栏和滑动条
    colorscheme molokai
    cd %:h 
   " set transparency=30
   " set guifont=Monaco:h18   " 设置默认字体为monaco
   " set showtabline=2        " 开启自带的tab栏
    "set columns=80          " 设置宽
    "set lines=23             " 设置长
else
" 字符界面下的设置
endif


"NERDTREE Config
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let NERDTreeWinSize=31
let NERDTreeWinPos='left'
let NERDTreeShowHidden=1
let NERDTreeHightCursorline=1
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
"let NERDTreeShowBookmarks=1




" TagList Config
nnoremap <silent> <F3> :TlistToggle<CR>
let Tlist_Use_SingleClick = 1
let Tlist_Show_One_File = 1   "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1  "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let Tlist_Process_File_Always = 1  "不打开Taglist时候也处理tags
 


