-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\user\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { "\27LJ\2\nà\22\0\0\t\0\23\00136\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\5\0019\2\6\0025\3\b\0=\3\a\0029\2\5\0019\2\t\0024\3\5\0009\4\n\1'\6\v\0'\a\f\0'\b\r\0B\4\4\2>\4\1\0039\4\n\1'\6\14\0'\a\15\0'\b\16\0B\4\4\2>\4\2\0039\4\n\1'\6\14\0'\a\17\0'\b\18\0B\4\4\2>\4\3\0039\4\n\1'\6\19\0'\a\20\0'\b\21\0B\4\4\0?\4\0\0=\3\a\0029\2\2\0009\4\22\1B\2\2\1K\0\1\0\topts\f:qa<CR>\18‚ùå Quit NVIM\6q\27:Telescope lazygit<CR>\18ü§ñ Lazy Git1:Telescope find_files prompt_prefix=üîç<CR>\20üîç Find Files\6g :ene <BAR> startinsert <CR>\18üìÑ New File\6e\vbutton\fbuttons\1#\0\0I            :h-                                  Nhy`               I           -mh.                           h.    `Ndho               I           hmh+                          oNm.   oNdhh               I          `Nmhd`                        /NNmd  /NNhhd               I          -NNhhy                      `hMNmmm`+NNdhhh               I          .NNmhhs              ```....`..-:/./mNdhhh+               I           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               I           oNNNdhhdo..://++//++++++/+++//++///++/-.`                I      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       I .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        I h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         I hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        I /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       I  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      I   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     I     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    I       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    I       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   I       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   I       //+++//++++++////+++///::--                 .::::-------::   I       :/++++///////////++++//////.                -:/:----::../-   I       -/++++//++///+//////////////               .::::---:::-.+`   I       `////////////////////////////:.            --::-----...-/    I        -///://////////////////////::::-..      :-:-:-..-::.`.+`    I         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   I           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ I            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``I           s-`::--:::------:////----:---.-:::...-.....`./:          I          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           I         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              I        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                I                        .-:mNdhh:.......--::::-`                    I                           yNh/..------..`                          I                                                                    \bval\vheader\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\tÄÄ¿ô\4\0" },
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-ufo"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\user\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\nà\22\0\0\t\0\23\00136\0\0\0'\2\1\0B\0\2\0029\0\2\0006\2\0\0'\4\3\0B\2\2\0029\2\4\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\3\0B\1\2\0029\2\5\0019\2\6\0025\3\b\0=\3\a\0029\2\5\0019\2\t\0024\3\5\0009\4\n\1'\6\v\0'\a\f\0'\b\r\0B\4\4\2>\4\1\0039\4\n\1'\6\14\0'\a\15\0'\b\16\0B\4\4\2>\4\2\0039\4\n\1'\6\14\0'\a\17\0'\b\18\0B\4\4\2>\4\3\0039\4\n\1'\6\19\0'\a\20\0'\b\21\0B\4\4\0?\4\0\0=\3\a\0029\2\2\0009\4\22\1B\2\2\1K\0\1\0\topts\f:qa<CR>\18‚ùå Quit NVIM\6q\27:Telescope lazygit<CR>\18ü§ñ Lazy Git1:Telescope find_files prompt_prefix=üîç<CR>\20üîç Find Files\6g :ene <BAR> startinsert <CR>\18üìÑ New File\6e\vbutton\fbuttons\1#\0\0I            :h-                                  Nhy`               I           -mh.                           h.    `Ndho               I           hmh+                          oNm.   oNdhh               I          `Nmhd`                        /NNmd  /NNhhd               I          -NNhhy                      `hMNmmm`+NNdhhh               I          .NNmhhs              ```....`..-:/./mNdhhh+               I           mNNdhhh-     `.-::///+++////++//:--.`-/sd`               I           oNNNdhhdo..://++//++++++/+++//++///++/-.`                I      y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:       I .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+        I h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`         I hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`        I /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.       I  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.      I   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.     I     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`    I       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:    I       -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`   I       /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:   I       //+++//++++++////+++///::--                 .::::-------::   I       :/++++///////////++++//////.                -:/:----::../-   I       -/++++//++///+//////////////               .::::---:::-.+`   I       `////////////////////////////:.            --::-----...-/    I        -///://////////////////////::::-..      :-:-:-..-::.`.+`    I         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -   I           ::::://::://::::::::::::::----------..-:....`.../- -+oo/ I            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``I           s-`::--:::------:////----:---.-:::...-.....`./:          I          yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`           I         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-              I        :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                I                        .-:mNdhh:.......--::::-`                    I                           yNh/..------..`                          I                                                                    \bval\vheader\fsection\vconfig\27alpha.themes.dashboard\nsetup\nalpha\frequire\tÄÄ¿ô\4\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
