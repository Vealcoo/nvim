return require('packer').startup(function()
  -- Packer can manage itself
	use "wbthomason/packer.nvim"
	use {
    "goolord/alpha-nvim",
    config = function ()
	require'alpha'.setup(require'alpha.themes.dashboard'.config)
        local alpha = require'alpha'
        local dashboard = require'alpha.themes.dashboard'
        dashboard.section.header.val = {
"            :h-                                  Nhy`               ",
"           -mh.                           h.    `Ndho               ",
"           hmh+                          oNm.   oNdhh               ",
"          `Nmhd`                        /NNmd  /NNhhd               ",
"          -NNhhy                      `hMNmmm`+NNdhhh               ",
"          .NNmhhs              ```....`..-:/./mNdhhh+               ",
"           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               ",
"           oNNNdhhdo..://++//++++++/+++//++///++/-.`                ",
"      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       ",
" .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        ",
" h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         ",
" hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        ",
" /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       ",
"  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      ",
"   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     ",
"     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    ",
"       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    ",
"       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   ",
"       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   ",
"       //+++//++++++////+++///::--                 .::::-------::   ",
"       :/++++///////////++++//////.                -:/:----::../-   ",
"       -/++++//++///+//////////////               .::::---:::-.+`   ",
"       `////////////////////////////:.            --::-----...-/    ",
"        -///://////////////////////::::-..      :-:-:-..-::.`.+`    ",
"         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   ",
"           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ ",
"            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``",
"           s-`::--:::------:////----:---.-:::...-.....`./:          ",
"          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           ",
"         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              ",
"        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                ",
"                        .-:mNdhh:.......--::::-`                    ",
"                           yNh/..------..`                          ",
"                                                                    ",
		}
        dashboard.section.buttons.val = {
            dashboard.button( "e", "📄 New File" , ":ene <BAR> startinsert <CR>"),
			dashboard.button( "g", "🔍 Find Files", ":Telescope find_files prompt_prefix=🔍<CR>"),
			dashboard.button( "g", "🤖 Lazy Git", ":Telescope lazygit<CR>"),
            dashboard.button( "q", "❌  Quit NVIM" , ":qa<CR>"),
        }
    --     local handle = io.popen('fortune')
    --     local fortune = handle:read("*a")
    --     handle:close()
    --     dashboard.section.footer.val = fortune
        alpha.setup(dashboard.opts)
    end
	}
	-- use "akinsho/bufferline.nvim"

end)
