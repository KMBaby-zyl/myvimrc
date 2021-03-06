set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" esLint
Plugin 'scrooloose/syntastic' " 可以调用外部命令行工具来进行代码风格检查
Plugin 'Chiel92/vim-autoformat' "可以调用外部命令行工具来格式化代码

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" =======自定义插件======
Plugin 'scrooloose/nerdtree'
"=====注释====
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims=1
" JSX语法
Plugin 'mxw/vim-jsx'
" HTML 插件
Plugin 'mattn/emmet-vim'
Plugin 'digitaltoad/vim-pug'
" 代码补全
"Plugin 'vim-snippets'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'   
Plugin 'mileszs/ack.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'kien/ctrlp.vim'
" 主题
Plugin 'tomasr/molokai'
Plugin 'git@github.com:fugalh/desert.vim.git'
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

"=====全局配置====
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch
" 禁止折行
set nowrap
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=2
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=2
" 让 NERDTess显示隐藏文件
let NERDTreeShowHidden=1


" 基于缩进或语法进行代码折叠
"set foldmethod=indent
 set foldmethod=syntax
" 启动 vim 时关闭折叠代码
 set nofoldenable

"   ===========快捷键========
map <C-t> :NERDTreeToggle<CR>
map <C-f> :Ack -i
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<CR>
" buffer 切换快捷键
map <Tab> :MBEbn<CR>
map <S-Tab> :MBEbp<CR>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" autocmd VimEnter * NERDTree

" =====主题=====
" colorscheme solarized
"let g:solarized_termcolors=256
" colorscheme desert
"let g:Powerline_colorscheme='solarized256'
"
" Enables syntax highlighting for JSDocs.
let g:javascript_plugin_jsdoc = 1
" 支持高亮写在JavaScript中的CSS和HTML
let javascript_enable_domhtmlcss = 1
" eslint 配置
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1

" esLint 格式化配置
let g:formatdef_eslint = '"SRC=eslint-temp-${RANDOM}.js; cat - >$SRC; eslint --fix $SRC >/dev/null 2>&1; cat $SRC | perl -pe \"chomp if eof\"; rm -f $SRC"'
let g:formatters_javascript = ['eslint']
noremap <F3> :Autoformat<CR>:w<CR>


let g:molokai_original = 1
let g:molokai_termcolors=256
set background=dark
set cursorline
colorscheme molokai



