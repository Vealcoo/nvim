" ==============================================================================
" vim 內建配置 
"==============================================================================

" set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20

" set nowrap

" set code fold
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" 關閉相容模式
set nocompatible

set autowrite

set encoding=UTF-8

set splitbelow

" set mouse 
set mouse=a 
" 設定滑鼠右鍵菜單
set mousemodel=popup_setpos

" 共用系統的剪貼本
" set clipboard+=unnamedplus
" set clipboard=unnamed

"文件被修改時自動重新讀取
set autoread
" 設定行號
" set relativenumber
set nu 
"突出顯示當前行
set cursorline 
" 突出顯示當前列
" set cursorcolumn
" 顯示括號匹配
set showmatch

" tab 縮排
set tabstop=4 " 設定Tab長度為4空格
set shiftwidth=4 " 設定自動縮排長度為4空格
set autoindent " 繼承前一行的縮排方式，適用於多行註釋

" 定義快捷鍵的字首，即<Leader>
let mapleader='\'

"==== 系統剪下板複製貼上 ====
" v 模式下複製內容到系統剪下板
vmap  <C-c> "+y
" n 模式下複製一行到系統剪下板
nmap  <C-c> "+y
" n 模式下貼上系統剪下板的內容
nmap  <C-v> "+p

" 開啟實時搜尋
set incsearch
" 搜尋時大小寫不敏感
set ignorecase
syntax enable
filetype plugin indent on    " 啟用自動補全
syntax on                    " 開啟檔案型別偵測

" 退出插入模式指定型別的檔案自動儲存
au InsertLeave *.go write

set termguicolors
set updatetime=100

nmap <Leader>q :q<CR>
nmap <Leader>qa :qa<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wa :wa<CR>
nmap <Leader>[ :bp<CR>
nmap <Leader>] :bn<CR>
nmap <Leader>bd :bd<CR>

"==============================================================================
" For GUI
"==============================================================================
set guifont=FiraCode\ Nerd\ Font\ Mono\ Retina:h11
let g:neovide_scale_factor=1.0
function! ChangeScaleFactor(delta)
    let g:neovide_scale_factor = g:neovide_scale_factor * a:delta
endfunction
nmap <C-=> ChangeScaleFactor(1.25)
nmap <C--> ChangeScaleFactor(1/1.25)
"==============================================================================
" 外掛配置 
"==============================================================================

" 外掛開始的位置
call plug#begin('~/AppData/local/nvim/plugged')

" auto save
Plug '907th/vim-auto-save'
let g:auto_save = 0  " enable AutoSave on Vim startup

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" 可以快速對齊的外掛
Plug 'junegunn/vim-easy-align'

" 用來提供一個導航目錄的側邊欄
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'


" 快速移動光標 ss
Plug 'easymotion/vim-easymotion'
nmap ss <Plug>(easymotion-s2)

" 可以使 nerdtree Tab 標籤的名稱更友好些
Plug 'jistr/vim-nerdtree-tabs'

" 可以在導航目錄中看到 git 版本資訊
" Plug 'Xuyuanp/nerdtree-git-plugin'

" 編輯時同時使用git指令
" Plug 'tpope/vim-fugitive'
" nmap git :Gdiff<CR>
" nmap <Leader>gr :Gread<CR>
" nmap <Leader>gb :Git blame<CR>

" 查找文件和搜索的工具
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" 檢視當前程式碼檔案中的變數和函式列表的外掛，
" 可以切換和跳轉到程式碼中對應的變數和函式的位置
" 大綱式導航, Go 需要 https://github.com/jstemmer/gotags 支援
" Plug 'majutsushi/tagbar'

" 自動補全括號的外掛，包括小括號，中括號，以及花括號
" Plug 'jiangmiao/auto-pairs'

" 快速註解
Plug 'tpope/vim-commentary'

" Vim狀態列外掛，包括顯示行號，列號，檔案型別，檔名，以及Git狀態
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='onedark'


" 有道詞典線上翻譯
" Plug 'ianva/vim-youdao-translater'
" nmap <leader>t :<C-u>Yde<CR>

" 程式碼自動完成，安裝完外掛還需要額外配置才可以使用
" Plug 'Valloric/YouCompleteMe'

" 可以在文件中顯示 git 資訊
Plug 'airblade/vim-gitgutter'

" 下面兩個外掛要配合使用，可以自動生成程式碼塊
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" go 主要外掛
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" go 中的程式碼追蹤，輸入 gd 就可以自動跳轉
" Plug 'dgryski/vim-godef'
" let g:godef_split=3 "左右打開新窗口
" let g:godef_same_file_in_same_window=1 "函數在同一文件不開新窗口


" markdown 外掛
" Plug 'iamcco/mathjax-support-for-mkdp'
" Plug 'iamcco/markdown-preview.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Plug 'camspiers/animate.vim'
" nmap <silent> <Up>    :call animate#window_delta_height(5)<CR>
" nmap <silent> <Down>  :call animate#window_delta_height(-5)<CR>
" nmap <silent> <Left>  :call animate#window_delta_width(5)<CR>
" nmap <silent> <Right> :call animate#window_delta_width(-5)<CR>

" 懸浮終端🐔
" Plug 'voldikss/vim-floaterm'
" nmap <leader>z :FloatermNew<CR>
" nmap <leader>zp :FloatermPrev<CR>
" nmap <leader>zn :FloatermNext<CR>

"" 語法檢查
"Plug 'dense-analysis/ale'

"" 始終開啟標誌列
"let g:ale_sign_column_always = 1
"let g:ale_set_highlights = 1
""自定義error和warning圖示
"let g:ale_sign_error = '🐔'
"let g:ale_sign_warning = '⚠️'
""在vim自帶的狀態列中整合ale
"let g:ale_statusline_format = ['🐔 %d', '⚠️ %d', '👌 OK']
""顯示Linter名稱,出錯或警告等相關資訊
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"" show errors or warnings in my statusline
"let g:airline#extensions#ale#enabled = 1

"let g:ale_fixers = {
"    \ 'go': ['gofmt', 'goimports'],
"\}

""普通模式下，zz前往上一個錯誤或警告，xx前往下一個錯誤或警告
"nmap zz <Plug>(ale_previous_wrap)
"nmap xx <Plug>(ale_next_wrap)
""<Leader>e觸發/關閉語法檢查
"nmap <Leader>e :ALEToggle<CR>
""<Leader>d檢視錯誤或警告的詳細資訊
"nmap <Leader>d :ALEDetail<CR>
"nmap <Leader>dd :ALEHover<CR>

" Plug 'scrooloose/syntastic'

" let g:syntastic_error_symbol='🐔'
" let g:syntastic_warning_symbol='⚠️'
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=1
" let g:syntastic_enable_highlighting=1
" let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']colorscheme adwaita
" let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes,速度比pylint快
" let g:syntastic_javascript_checkers = ['jsl', 'jshint']
" let g:syntastic_html_checkers=['tidy', 'jshint']

" " 修改高亮的背景色
" highlight SyntasticErrorSign guifg=white guibg=black

" " to see error location list
" " let g:syntastic_always_populate_loc_list = 1
" " let g:syntastic_auto_loc_list = 0
" " let g:syntastic_loc_list_height = 5
" function! ToggleErrors()
" let old_last_winnr = winnr('$')
" lclose
" if old_last_winnr == winnr('$')
" " Nothing was closed, open syntastic error location panel
"         Errors
"     endif
" endfunction
" nmap <Leader>e :call ToggleErrors()<cr>


" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" key mappings example
" nmap <silent> dg <Plug>(coc-definition)
" nmap <silent> ig <Plug>(coc-implementation)
" nmap <silent> rg <Plug>(coc-references)
" nmap <silent> tg <Plug>(coc-type-definition)
" there's way more, see `:help coc-key-mappings@en'


Plug 'ervandew/supertab'
let g:SuperTabMappingForward='<s-tab>'
let g:SuperTabMappingBackward='<tab>'

" start screen
" Plug 'mhinz/vim-startify'

" tmux
" Plug 'christoomey/vim-tmux-navigator'

" Plug 'matze/vim-move'
" vmap <C-j> <Plug>MoveBlockDown
" vmap <C-k> <Plug>MoveBlockUp
" nmap <C-j> <Plug>MoveLineDown
" nmap <C-k> <Plug>MoveLineUp

" Plug 'wakatime/vim-wakatime'

" code-minimap
" Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
" let g:minimap_width = 10
" let g:minimap_auto_start = 1
" let g:minimap_auto_start_win_enter = 1

" Plug 'Xuyuanp/scrollbar.nvim'
" augroup ScrollbarInit
"   autocmd!
"   autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
"   autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
"   autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
" augroup end

" 側邊滑輪
" Plug 'sslivkoff/vim-scroll-barnacle'
" let g:sb_bar_style = "double dot"

Plug 'vim-denops/denops.vim'
Plug 'skanehira/denops-docker.vim'   " depends on denops.vim and deno
nmap <Leader>du :Docker compose up<CR>
nmap <Leader>ds :Docker compose stop<CR>
nmap <Leader>drs :Docker compose restart<CR>

" tagbar support lsp
" Plug 'liuchengxu/vista.vim'
" nmap ee :Vista!!<CR>

"配色方案
" colorscheme neodark
Plug 'KeitaNakamura/neodark.vim'
" colorscheme monokai
Plug 'crusoexia/vim-monokai'
" colorscheme github 
Plug 'acarapetis/vim-colors-github'
" colorscheme one 
Plug 'rakr/vim-one'
" colorscheme nord
Plug 'arcticicestudio/nord-vim'
" colorscheme night-owl
Plug 'haishanh/night-owl.vim'
" colorscheme alduin
Plug 'alessandroyorba/alduin'
" colorscheme wombat
Plug 'sheerun/vim-wombat-scheme'
" colorscheme ayu
Plug 'ayu-theme/ayu-vim'
" colorscheme kolor
Plug 'zeis/vim-kolor'
" colorscheme doom-one
Plug 'romgrk/doom-one.vim'
" colorscheme Nightfox/Dayfox/Dawnfox/Duskfox/Nordfox/Terafox/Carbonfox
Plug 'EdenEast/nightfox.nvim'

" lua base --------------------------------------------------------------------
" status line
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
" Plug 'ryanoasis/vim-devicons' Icons without colours
" keybinding
Plug 'folke/which-key.nvim'
" telescope.nvim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" lazygit (depend on telescope.nvim)
Plug 'kdheepak/lazygit.nvim'
" bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.12.0' }  " v3 之後的 click event 是壞的
" Plug 'romgrk/barbar.nvim'
" nvim-tree
Plug 'kyazdani42/nvim-tree.lua'
" 縮排指示線
Plug 'lukas-reineke/indent-blankline.nvim'
" 突出顯示 & 套件相依接口
Plug 'nvim-treesitter/nvim-treesitter'
" Shows git diff
Plug 'sindrets/diffview.nvim'
" nice cursor line
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" terminal
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" trouble.nvim
Plug 'folke/trouble.nvim'
" notify
Plug 'rcarriga/nvim-notify'
" 自動補全括號的外掛
Plug 'windwp/nvim-autopairs'
" smart git
Plug 'lewis6991/gitsigns.nvim'
nmap git :Gitsigns diffthis<CR>
" golang support
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' } " recommanded if need floating window support
" lsp_signature
Plug 'ray-x/lsp_signature.nvim'
" lua fzf (Unsupport Windows QQ)
" Plug 'ibhagwan/fzf-lua', {'branch': 'main'}

" let g:VM_mouse_mappings = 1
" nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
" nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)  
" nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)

call plug#end()

lua << EOF
require('plugins')

require('lsp.setup')
require('lsp.nvim-cmp')

require('lualine').setup({
	options = {
		theme = 'dracula',  
	}
})

require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

require("telescope").setup{}

require("telescope").load_extension("lazygit")

require("nvim-tree").setup()

require('bufferline').setup ({
    options = {
	    separator_style = "slant",
        show_buffer_close_icons = true,
        view = "multiwindow",
		offsets = {{
            filetype = "NvimTree",
            text = "       File Explorer",
            highlight = "Directory",
            text_align = "left"
        }},
		diagnostics = "nvim_lsp"
    }
})

require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}

require("nvim-treesitter.configs").setup {
  -- :TSInstall <language_to_install>
  -- :TSInstallInfo
  ensure_installed = {"vim", "go", "lua"},
  -- highlight
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    }
 }
}

require("toggleterm").setup({
	-- size can be a number or function which is passed the current terminal
		-- size = 20 | function(term)
		function(term)
			if term.direction == "horizontal" then
				return 20
			elseif term.direction == "vertical" then
				return vim.o.columns * 0.4
			end
		end,
		open_mapping = [[<c-\>]],
		hide_numbers = true, -- hide the number column in toggleterm buffers
		shade_filetypes = {},
		shade_terminals = true,
		start_in_insert = true,
		insert_mappings = false, -- whether or not the open mapping applies in insert mode
		persist_size = true,
		-- direction = 'vertical' | 'horizontal' | 'window' | 'float',
		direction = "horizontal",
		close_on_exit = true, -- close the terminal window when the process exits
		shell = zsh, -- change the default shell
		-- This field is only relevant if direction is set to 'float'
		float_opts = {
			-- The border key is *almost* the same as 'nvim_open_win'
			-- see :h nvim_open_win for details on borders however
			-- the 'curved' border is a custom border type
			-- not natively supported but implemented in this plugin.
			-- border = 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
			border = "curved",
			winblend = 3,
			highlights = {
				border = "Normal",
				background = "Normal",
			},
		},
	})

require("trouble").setup {
	height = 3,
    signs = {
        -- icons / text used for a diagnostic
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "﫠"
    },
	auto_open = false, -- automatically open the list when you have diagnostics
    auto_close = true, -- automatically close the list when you have no diagnostics
	auto_preview = true, -- automatically preview the location of the diagnostic. <esc> to close preview and go back to last window
    auto_fold = true, -- automatically fold a file trouble list at creation
}

require("notify").setup{
	stages = "fade_in_slide_out",	
	timeout = 3000,
	background_colour = "#2E3440",
}
vim.notify = require("notify")

require('impatient')

require("nvim-autopairs").setup{}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl= hl, numhl = hl })
end

require('gitsigns').setup{
	current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
  	current_line_blame_opts = {
    	virt_text = true,
    	virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
    	delay = 250,
    	ignore_whitespace = false,
  },
}

require('go').setup()

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

local signature_config = {
  log_path = vim.fn.expand("$HOME") .. "/tmp/sig.log",
  debug = true,
  hint_enable = false,
  handler_opts = { border = "single" },
  max_width = 80,
}
require("lsp_signature").setup(signature_config)

require("symbols-outline").setup({
	width = 30,
})

EOF

" telescope:
nmap <Leader>f :Telescope<CR>
nmap fgit :Telescope lazygit<CR>
" nvim-tree
nmap ww :NvimTreeToggle<CR>
" lsp
nmap <Leader>rn :lua vim.lsp.buf.rename()<CR>

nmap gd :lua vim.lsp.buf.definition()<CR>
nmap gD :lua vim.lsp.buf.declaration()<CR>
nmap gh :lua vim.lsp.buf.hover()<CR>
nmap gi :lua vim.lsp.buf.implementation()<CR>
nmap gr :lua vim.lsp.buf.references()<CR>
nmap zz :lua vim.diagnostic.goto_prev()<CR>
nmap xx :lua vim.diagnostic.goto_next()<CR>

nmap <Leader>= :lua vim.lsp.buf.formatting()<CR>

nmap <Leader>tt :ToggleTerm direction=horizontal<CR>
nmap <Leader>z :ToggleTerm direction=float<CR>

nmap err :TroubleToggle<cr>

" autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
" autocmd BufWritePre *.go lua vim.lsp.buf.code_action()
" autocmd BufWritePre *.go LspRestart
" autocmd BufEnter * :lua require('lazygit.utils').project_root_dir()

nmap ee :SymbolsOutline<cr>

"==============================================================================
" 主題配色 
"==============================================================================

" 配色方案, 可以從上面外掛安裝中的選擇一個使用 
let g:rehash256 = 1
colorscheme default " 主題

set background=dark " 主題背景 dark-深色; light-淺色
highlight Normal guibg=NONE ctermbg=None

"==============================================================================
" Startify 設置
"==============================================================================

" " 設定書籤
" let g:startify_bookmarks= [
"             \ 'C:\go\src\Code\GitHub',
"             \ 'C:\Users\Marc\AppData\Local\nvim\init.vim',
" 			\ 'C:\go\src\Code\test.txt',
"             \]
" " 檔案列表數目
" let g:startify_files_number = 5

" let g:startify_lists = [
" 		  \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
"           \ { 'type': 'files',     'header': ['   MRU']            }, 
"           \ { 'type': 'sessions',  'header': ['   Sessions']       },
"           \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
"           \ { 'type': 'commands',  'header': ['   Commands']       },
"           \ ]

" " auto session
" let g:startify_session_autoload = 1
" " 過濾.git
" let g:startify_skiplist = [
"        \ '/.git/',
"        \ ]
" " padding left
" " let g:startify_padding_left = 5
" " 自定義 Header & Footer
" let g:startify_custom_header = [
" 		\'+--------------------------------------------------------------------+',
" 		\'|   _____________________________________                            |',
" 		\'|  / Its the good girls who keep the     \                           |',
" 		\'| | diaries, the bad girls never have the |                          |',
" 		\'| | time.                                 |                          |',
" 		\'| |                                       |                          |',
" 		\'|  \ -- Tallulah Bankhead                /                           |',
" 		\'|   -------------------------------------                            |',
" 		\'|           \                    ^    /^,                            |',
" 		\'|            \                  / \  // \,                           |',
" 		\'|             \   |\___/|      /   \//  .\,                          |',
" 		\'|              \  /O  O  \__  /    //  | \ \           *----*,       |',
" 		\'|                /     /  \/_/    //   |  \  \          \   |,       |',
" 		\'|                 @___@`    \/_   //    |   \   \         \/\ \,     |',
" 		\'|               0/0/|       \/_ //     |    \    \         \  \,     |',
" 		\'|            0/0/0/0/|        \///      |     \     \       |  |,    |',
" 		\'|         0/0/0/0/0/_|_ /   (  //       |      \     _\     |  /,    |',
" 		\'|      0/0/0/0/0/0/`/,_ _ _/  ) ; -.    |    _ _\.-~       /   /,    |',
" 		\'|                  ,-}        _      *-.|.-~-.           .~    ~,    |',
" 		\'| \     \__/        `/\      /                 ~-. _ .-~      /,     |',
" 		\'|  \____(oo)           *.   }            {                   /,      |',
" 		\'|  (    (--)          .----~-.\        \-`                 .~,       |',
" 		\'|  //__\\  \__ Ack!   ///.----..<        \             _ -~,         |',
" 		\'| //    \\               ///-._ _ _ _ _ _ _{^ - - - - ~,             |',
" 		\'+--------------------------------------------------------------------+',
" 		\]

" " 機掰 windows = =
" " let g:startify_custom_header =
" "             \ startify#pad(split(system('fortune | cowsay -f dragon-and-cow'), '\n'))

" let g:startify_custom_footer = [
"             \ '+-------------------------------+',
"             \ '|         fuck my life!         |',
"             \ '+----------------+--------------+',
"             \]

" let g:startify_center = 0

" " ??????????????????????
" function! SomeCheck()
"    if filereadable(expand("%"))
"     echo "SpecificFile exists"
"   else
"      autocmd VimEnter * Startify
"   endif
" endfunction

" call SomeCheck()

"==============================================================================
" vim-go 外掛
"==============================================================================
" let g:go_fmt_command = "goimports" 
" let g:go_autodetect_gopath = 1

" " quickfix shows the error list when you write
" " let g:go_list_type = "quickfix"
" " let g:go_debug = ["shell-commands", "debugger-state", "debugger-commands", "lsp"]
" " let g:go_highlight_diagnostic_error = 1
" " let g:go_highlight_diagnostic_warnings = 1
" " let g:go_diagnostics_level = 2

" let g:go_version_warning = 1
" let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_generate_tags = 1
" let g:go_test_timeout = '10s'

" let g:godef_split=2

" " vim-go custom mappings
" " au FileType go nmap <Leader>s <Plug>(go-implements)
" au FileType go nmap <Leader>i <Plug>(go-info)
" au FileType go nmap <Leader>gd <Plug>(go-doc)
" au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
" au FileType go nmap <leader>r <Plug>(go-run)
" au FileType go nmap <leader>b <Plug>(go-build)
" au FileType go nmap <leader>t <Plug>(go-test)
" au FileType go nmap <leader>c <Plug>(go-coverage)
" au FileType go nmap <Leader>ds <Plug>(go-def-split)
" au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
" au FileType go nmap qq <Plug>(go-def)
" au FileType go nmap <Leader>n <Plug>(go-rename)
" au FileType go nmap <Leader>p :GoPlay <CR>

" augroup go
"   autocmd!
"   autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
" augroup END

" " let g:go_gopls_enabled = 0

"==============================================================================
" NERDTree 外掛
"==============================================================================

" " 開啟和關閉NERDTree快捷鍵
" " control + w to switch tab 
" " nmap ww :NERDTreeToggle<CR>
" " 顯示行號
" let NERDTreeShowLineNumbers=0
" " 開啟檔案時是否顯示目錄
" let NERDTreeAutoCenter=0
" " 是否顯示隱藏檔案
" let NERDTreeShowHidden=1
" " 設定寬度
" let NERDTreeWinSize=40
" " 忽略一下檔案的顯示
" let NERDTreeIgnore=[]
" " 開啟 vim 檔案及顯示書籤列表
" let NERDTreeShowBookmarks=2

" " 在終端啟動vim時，共享NERDTree
" let g:nerdtree_tabs_open_on_console_startup=0

"==============================================================================
"  majutsushi/tagbar 外掛
"==============================================================================

" majutsushi/tagbar 外掛開啟關閉快捷鍵
" let g:tagbar_autofocus = 1

" let g:tagbar_width=45

" let g:tagbar_type_go = {
"     \ 'ctagstype': 'go',
"     \ 'kinds' : [
"         \'p:package',
"         \'f:function',
"         \'v:variables',
"         \'t:type',
"         \'c:const'
"     \]
" \}

" nmap ee :TagbarToggle<CR>

"==============================================================================
"  nerdtree-git-plugin 外掛
"==============================================================================
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }

" let g:NERDTreeGitStatusShowIgnored = 1

"==============================================================================
"  Valloric/YouCompleteMe 外掛
"==============================================================================

" let g:ycm_gopls_binary_path = "gopls"
" " let g:ycm_gopls_args = ['-remote=auto']

" " make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" " better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"==============================================================================
"  其他外掛配置
"==============================================================================

" markdwon 的快捷鍵
" map <silent> <F5> <Plug>MarkdownPreview
" map <silent> <F6> <Plug>StopMarkdownPreview

" tab 標籤頁切換快捷鍵
:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>

"==============================================================================
" fzf settings
"==============================================================================

" This is the default extra key bindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

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

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

nmap <leader>fl :Lines 
" nnoremap <leader>fb :BLines 
nmap <leader>ff :Files 
nmap <leader>fg :GFiles 
nmap <leader>f? :GFiles? 
nmap <leader>ft :Tags<cr>
nmap <leader>fa :Ag 
nmap <leader>fc :Commits

