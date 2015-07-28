"===========환경 설정===============
"syntax on
"filetype on     "파일의 종류를 자동으로 인식
filetype indent on "파일 종류에 따른 구문강조
"colorscheme torte
colorscheme evening
"colorscheme desert
set fencs=utf-8,euc-kr,ucs-bom,latin1

"===========기본 설정===============
set shiftwidth=2  "들여쓰기를 2칸으로 설정
set tabstop=2     "tap 간격을 2칸으로 설정
set sts=2         "tap 간격을 space로 변경
set laststatus=2  "상태정보 라인 2줄
set statusline=%h%F%m%r%=[%l:%c(%p%%)]   "상태정보라인 구성
"set backspace=eol, start, indent      "줄의 끝, 시작, 들여쓰기에서 백스페이스시 이전줄로

"===========옵션 설정===============
"set showcmd          " Show (partial) command in status line.
set showmatch          " Show matching brackets.
"set ignorecase          " Do case insensitive matching
"set smartcase          " Do smart case matching
"set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a          " Enable mouse usage (all modes)

set autoindent "자동 들여쓰기
set cindent "C프로그래밍용 자동 들여쓰기
set smartindent "스마트한 들여쓰기
set ruler "화면 우측하단에 현재 커서의 위치(줄,칸) 표시
set number "행번호 표시, set nu도 가능
set sm "가로닫기 괄호를 사용할 때 일치하는 가로 열기 괄호를 보여줌
set hlsearch "검색어 강조, set hls도 가능
set incsearch "검색어 입력하면서 결과도 보여줌
set ignorecase "검색시 대/소문자 무시
set nowrap "자동 줄바꿈기능 사용하지 않음
set nocompatible "오리지날 vi와 호환하지 않음
set nowrapscan "검색할 때 문서의 끝에서 처음으로 안돌아감
set nobackup "백업파일 안만듬
set history=1000 "vi 편집기록 기억갯수. viminfo에 기록


if has("autocmd")	" When editing a file, always jump to the last cursor position
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif
