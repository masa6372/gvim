"-------------------------------------------------------------------------
""                           for plugin
"-------------------------------------------------------------------------
let g:plug_timeout = 300

call plug#begin('~/.config/nvim/plugged')
	Plug 'preservim/nerdtree'                               "�v���O�C���Ǘ��p
	Plug 'ycm-core/YouCompleteMe', {'do': './install.py'}   "�������
	Plug 'itchyny/calendar.vim'
	"�J�����_�[ 
	Plug 'vim-syntastic/syntastic'
	"���@�~�X�̃n�C���C�g
	Plug 'godlygeek/tabular'
	"�ȉ�MarkDown�̂���
	Plug 'plasticboy/vim-markdown'
	Plug 'previm/previm'
    Plug 'daeyun/vim-matlab'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

filetype plugin on "for netrw
"-------------------------------------------------------------------------
""                           for coc.nvim
"-------------------------------------------------------------------------
let g:coc_global_extensions = [
    \'coc-clangd',
    \'coc-pyright'
    \]
"-------------------------------------------------------------------------
"                           markdown settings
"-------------------------------------------------------------------------
let g:previm_open_cmd = '/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe'
"MarkDown�Ńu���E�U�\�������邽�߂̃p�X
let g:previm_wsl_mode = 1
"WSL��previm��p���ău���E�U�\�������邽�߂̐ݒ�
"--------------------------------------------------------------------------
"                            general settings
"--------------------------------------------------------------------------
silent! helptags ALL
syntax on
"�V���^�b�N�X�n�C���C�g��L����
filetype plugin indent on
"�t�@�C���^�C�v�Ɋ�Â����C���f���g��L����
set foldmethod=indent       "�C���f���g�ł�����
set autoindent
"�V�����s���n�߂�Ƃ��Ɏ����ŃC���f���g 
set expandtab               "�^�u���X�y�[�X�ɕϊ�
set tabstop=4
"�^�u���X�y�[�X�l�����ƃJ�E���g
set shiftwidth=4
"�����C���f���g�Ɏg����X�y�[�X�̐����l�ɐݒ�
set backspace=2
"�o�b�N�X�y�[�X�̋������C��
set termguicolors
"tmux�Ȃǂ̃J���[�X�L�[�����C��
colorscheme torte           "�J���[�X�L�[����ݒ�
set number                  "�s����ǉ�
set clipboard=unnamed,unnamedplus 
"�N���b�v�{�[�h��*p�ŃR�s�[���邽��
set laststatus=2
"�X�e�[�^�X���C�����펞�\��
set showcmd
if !exists('g:vscode') 
	"�Ō�Ɏ��s�����R�}���h���X�e�[�^�X���C���ɕ\��
	set cursorline
	"�J�[�\��������s�Ƀ��C����\��
	set cursorcolumn
	"�J�[�\���������Ƀ��C����\��
endif
"--------------------------------------------------------------------------
"�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@for japanese input
"--------------------------------------------------------------------------
set ttimeout
set ttimeoutlen=50
if !exists('g:vscode') 
	set ambiwidth=double
endif

inoremap <silent> <ESC> <ESC>
inoremap <silent> <C-[> <ESC>
inoremap <silent> <C-j> <C-^>
"--------------------------------------------------------------------------
"                           leader key settings
"--------------------------------------------------------------------------
let mapleader = "-"
"���[�_�[�L�[��-�ɐݒ�
nnoremap <leader>ev :vsplit $MYVIMRC<cr> 
"-ev��MYVIMRC���J��
nnoremap <leader>sv :source $MYVIMRC<cr>
"-sv��MYVIMRC�����s
set showmatch               "�J�b�R()��Ή��Â���
set matchtime=1
"�Ή�����J�b�R�փJ�[�\������Ԏ��Ԃ�0.1�b�ɐݒ�
set pumheight=10
"�⊮�̃|�b�v�A�b�v���j���[�̍�����ݒ�

let g:python3_host_prog='C:\Users\songp\AppData\Local\Programs\Python\Python310\python.exe'
