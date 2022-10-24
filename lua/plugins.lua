return require('packer').startup(function()
  -- Packer can manage itself
	use "wbthomason/packer.nvim"
	use {
    "goolord/alpha-nvim",
    config = function ()
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        -- dashboard.section.header.val = {
		-- "            :h-                                  Nhy`               ",
		-- "           -mh.                           h.    `Ndho               ",
		-- "           hmh+                          oNm.   oNdhh               ",
		-- "          `Nmhd`                        /NNmd  /NNhhd               ",
		-- "          -NNhhy                      `hMNmmm`+NNdhhh               ",
		-- "          .NNmhhs              ```....`..-:/./mNdhhh+               ",
		-- "           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
		-- "           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
		-- "      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
		-- " .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
		-- " h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
		-- " hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
		-- " /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
		-- "  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
		-- "   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
		-- "     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
		-- "       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
		-- "       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
		-- "       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
		-- "       //+++//++++++////+++///::--                 .::::-------::   ",
		-- "       :/++++///////////++++//////.                -:/:----::../-   ",
		-- "       -/++++//++///+//////////////               .::::---:::-.+`   ",
		-- "       `////////////////////////////:.            --::-----...-/    ",
		-- "        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
		-- "         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
		-- "           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
		-- "            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
		-- "           s-`::--:::------:////----:---.-:::...-.....`./:          ",
		-- "          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
		-- "         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
		-- "        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
		-- "                        .-:mNdhh:.......--::::-`                    ",
		-- "                           yNh/..------..`                          ",
		-- "                                                                    ",
		-- }
		dashboard.section.header.val = {
        [[                        .,,cc,,,.                                ]],
        [[                   ,c$$$$$$$$$$$$cc,                             ]],
        [[                ,c$$$$$$$$$$??""??$?? ..                         ]],
        [[             ,z$$$$$$$$$$$P xdMMbx  nMMMMMb                      ]],
        [[            r")$$$$??$$$$" dMMMMMMb "MMMMMMb                     ]],
        [[          r",d$$$$$>;$$$$ dMMMMMMMMb MMMMMMM.                    ]],
        [[         d'z$$$$$$$>'"""" 4MMMMMMMMM MMMMMMM>                    ]],
        [[        d'z$$$$$$$$h $$$$r`MMMMMMMMM "MMMMMM                     ]],
        [[        P $$$$$$$$$$.`$$$$.'"MMMMMP',c,"""'..                    ]],
        [[       d',$$$$$$$$$$$.`$$$$$c,`""_,c$$$$$$$$h                    ]],
        [[       $ $$$$$$$$$$$$$.`$$$$$$$$$$$"     "$$$h                   ]],
        [[      ,$ $$$$$$$$$$$$$$ $$$$$$$$$$%       `$$$L                  ]],
        [[      d$c`?$$$$$$$$$$P'z$$$$$$$$$$c       ,$$$$.                 ]],
        [[      $$$cc,"""""""".zd$$$$$$$$$$$$c,  .,c$$$$$F                 ]],
        [[     ,$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$                 ]],
        [[     d$$$$$$$$$$$$$$$$c`?$$$$$$$$$$$$$$$$$$$$$$$                 ]],
        [[     ?$$$$$$$$$."$$$$$$c,`..`?$$$$$$$$$$$$$$$$$$.                ]],
        [[     <$$$$$$$$$$. ?$$$$$$$$$h $$$$$$$$$$$$$$$$$$>                ]],
        [[      $$$$$$$$$$$h."$$$$$$$$P $$$$$$$$$$$$$$$$$$>                ]],
        [[      `$$$$$$$$$$$$ $$$$$$$",d$$$$$$$$$$$$$$$$$$>                ]],
        [[       $$$$$$$$$$$$c`""""',c$$$$$$$$$$$$$$$$$$$$'                ]],
        [[       "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$F                 ]],
        [[        "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'                  ]],
        [[        ."?$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$P'  FOR FUCK'S SAKE! ]],
        [[     ,c$$c,`?$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"  THE TIME HE WASTES ]],
        [[   z$$$$$P"   ""??$$$$$$$$$$$$$$$$$$$$$$$"  IN RICING NVIM IS    ]],
        [[,c$$$$$P"          .`""????????$$$$$$$$$$c  DRIVING ME CRAZY.    ]],
        [[`"""              ,$$$L.        "?$$$$$$$$$.   WHAT'S THE MATTER ]],
        [[               ,cd$$$$$$$$$hc,    ?$$$$$$$$$c    WITH HIM ?????? ]],
        [[              `$$$$$$$$$$$$$$$.    ?$$$$$$$$$h                   ]],
        [[               `?$$$$$$$$$$$$P      ?$$$$$$$$$                   ]],
        [[                 `?$$$$$$$$$P        ?$$$$$$$$$$$$hc             ]],
        [[                   "?$$$$$$"         <$$$$$$$$$$$$$$r   FUCKING  ]],
        [[                     `""""           <$$$$$$$$$$$$$$F   KILL IT  ]],
        [[                                      $$$$$$$$$$$$$F             ]],
        [[                                      `?$$$$$$$$P"               ]],
        [[                                        "????""                  ]]
		}
        dashboard.section.buttons.val = {
            dashboard.button( "e", "📄 New File" , ":ene <BAR> startinsert <CR>"),
			dashboard.button( "g", "🔍 Find Files", ":Telescope find_files prompt_prefix=🔍<CR>"),
			dashboard.button( "g", "🤖 Lazy Git", ":Telescope lazygit<CR>"),
            dashboard.button( "q", "❌ Quit NVIM" , ":qa<CR>"),
        }
    --     local handle = io.popen('fortune')
    --     local fortune = handle:read("*a")
    --     handle:close()
    --     dashboard.section.footer.val = fortune
        alpha.setup(dashboard.opts)
    end
	}

	use "williamboman/nvim-lsp-installer"
	use "neovim/nvim-lspconfig"

	  -- nvim-cmp
  	use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
  	use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
  	use 'hrsh7th/cmp-path'     -- { name = 'path' }
  	use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
  	use 'hrsh7th/nvim-cmp'
  	-- vsnip
  	use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
  	use 'hrsh7th/vim-vsnip'
  	use 'rafamadriz/friendly-snippets'
  	-- lspkind
  	use 'onsails/lspkind-nvim'

end)
