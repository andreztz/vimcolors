" Name:         Mystical Tutor
" Description:  Low-contrast flat colorscheme
" Author:       Cem Aksoylar
" Maintainer:   Cem Aksoylar
" Website:      https://github.com/caksoylar/vim-mysticaltutor
" License:      MIT
" Last Updated: Thu 04 Apr 2019 07:19:27 PM DST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'mysticaltutor_use16', &t_Co < 256) ? 16 : 256))
  echoerr '[Mystical Tutor] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'mysticaltutor'

" 256-color variant
if !get(g:, 'mysticaltutor_use16', &t_Co < 256)
  if !has('gui_running') && get(g:, 'mysticaltutor_transp_bg', 0)
    hi Normal ctermfg=253 ctermbg=NONE guifg=#d9d9d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=253 ctermbg=NONE guifg=#d9d9d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  else
    hi Normal ctermfg=253 ctermbg=235 guifg=#d9d9d9 guibg=#1e2227 guisp=NONE cterm=NONE gui=NONE
    hi Terminal ctermfg=253 ctermbg=235 guifg=#d9d9d9 guibg=#1e2227 guisp=NONE cterm=NONE gui=NONE
  endif
  hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi CursorColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=231 ctermbg=236 guifg=#ffffff guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=107 ctermbg=236 guifg=#8bbe67 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=143 ctermbg=236 guifg=#c3b470 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=168 ctermbg=236 guifg=#e07093 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=137 ctermbg=236 guifg=#bb8e67 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Directory ctermfg=67 ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link EndOfBuffer NonText
  hi ErrorMsg ctermfg=235 ctermbg=168 guifg=#1e2227 guibg=#e07093 guisp=NONE cterm=NONE gui=NONE
  hi! link FoldColumn LineNr
  hi Folded ctermfg=248 ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi IncSearch ctermfg=137 ctermbg=235 guifg=#bb8e67 guibg=#1e2227 guisp=NONE cterm=NONE,reverse gui=NONE,standout
  hi LineNr ctermfg=248 ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=248 ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=253 ctermbg=24 guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=236 guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=235 ctermbg=72 guifg=#1e2227 guibg=#5cbe97 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=67 guifg=NONE guibg=#5c8ec7 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=107 ctermbg=NONE guifg=#8bbe67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi Search ctermfg=67 ctermbg=235 guifg=#5c8ec7 guibg=#1e2227 guisp=NONE cterm=NONE,reverse gui=NONE,standout
  hi SignColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=248 ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=253 ctermbg=24 guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi StatusLineNC ctermfg=248 ctermbg=236 guifg=#a0a4aa guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi TabLine ctermfg=248 ctermbg=236 guifg=#a0a4aa guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=253 ctermbg=236 guifg=#d9d9d9 guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=253 ctermbg=24 guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Title ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=236 ctermbg=236 guifg=#30343c guibg=#30343c guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=110 ctermbg=236 guifg=#a0b4cf guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi WarningMsg ctermfg=235 ctermbg=143 guifg=#1e2227 guibg=#c3b470 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=72 ctermbg=24 guifg=#5cbe97 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link Boolean Constant
  hi! link Character Constant
  hi Comment ctermfg=248 ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Conditional Statement
  hi Constant ctermfg=168 ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi Error ctermfg=168 ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link Exception Statement
  hi! link Float Constant
  hi Function ctermfg=147 ctermbg=NONE guifg=#b1a3df guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi PreProc ctermfg=151 ctermbg=NONE guifg=#b1c6ac guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Repeat Statement
  hi Special ctermfg=137 ctermbg=NONE guifg=#bb8e67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi Statement ctermfg=67 ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link StorageClass Type
  hi String ctermfg=107 ctermbg=NONE guifg=#8bbe67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Structure Type
  hi! link Tag Special
  hi Todo ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=98 ctermbg=NONE guifg=#8b5fc7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link Typedef Type
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi! link lCursor Cursor
  if !has('gui_running')
    hi SpellBad ctermfg=168 ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellCap ctermfg=67 ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellLocal ctermfg=98 ctermbg=NONE guifg=#8b5fc7 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellRare ctermfg=72 ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  else
    hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#e07093 cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5c8ec7 cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#8b5fc7 cterm=NONE,undercurl gui=NONE,undercurl
    hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5cbe97 cterm=NONE,undercurl gui=NONE,undercurl
  endif
  let s:terminal_colors = ['#1e2227', '#e07093', '#8bbe67', '#bb8e67', '#5c8ec7', '#8b5fc7', '#5cbe97', '#d9d9d9', '#30343c', '#dfb4c9', '#b1c6ac', '#c3b470', '#a0b4cf', '#b1a3df', '#a0c4bd', '#ffffff']
  if has('nvim')
    call execute(map(s:terminal_colors, {ind, val -> printf("let g:terminal_color_%d = '%s'", ind, val)}))
  else
    let g:terminal_ansi_colors = s:terminal_colors
  endif
  finish
endif

" 16-color variant
if !has('gui_running') && get(g:, 'mysticaltutor_transp_bg', 0)
  hi Normal ctermfg=Gray ctermbg=NONE guifg=#d9d9d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=Gray ctermbg=NONE guifg=#d9d9d9 guibg=NONE guisp=NONE cterm=NONE gui=NONE
else
  hi Normal ctermfg=Gray ctermbg=Black guifg=#d9d9d9 guibg=#1e2227 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=Gray ctermbg=Black guifg=#d9d9d9 guibg=#1e2227 guisp=NONE cterm=NONE gui=NONE
endif
hi ColorColumn ctermfg=NONE ctermbg=DarkGray guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi CursorColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi CursorLine ctermfg=NONE ctermbg=DarkGray guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=White ctermbg=DarkGray guifg=#ffffff guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=DarkGreen ctermbg=DarkGray guifg=#8bbe67 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=Yellow ctermbg=DarkGray guifg=#c3b470 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=DarkRed ctermbg=DarkGray guifg=#e07093 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=DarkYellow ctermbg=DarkGray guifg=#bb8e67 guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Directory ctermfg=DarkBlue ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link EndOfBuffer NonText
hi ErrorMsg ctermfg=Black ctermbg=DarkRed guifg=#1e2227 guibg=#e07093 guisp=NONE cterm=NONE gui=NONE
hi! link FoldColumn LineNr
hi Folded ctermfg=Gray ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi IncSearch ctermfg=DarkYellow ctermbg=Black guifg=#bb8e67 guibg=#1e2227 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi LineNr ctermfg=Gray ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=Gray ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=Gray ctermbg=DarkBlue guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=DarkGray guifg=NONE guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=Black ctermbg=DarkCyan guifg=#1e2227 guibg=#5cbe97 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=NONE ctermbg=DarkBlue guifg=NONE guibg=#5c8ec7 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=DarkGreen ctermbg=NONE guifg=#8bbe67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi Search ctermfg=DarkBlue ctermbg=Black guifg=#5c8ec7 guibg=#1e2227 guisp=NONE cterm=NONE,reverse gui=NONE,standout
hi SignColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=Gray ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=Gray ctermbg=DarkBlue guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi StatusLineNC ctermfg=Gray ctermbg=DarkGray guifg=#a0a4aa guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi TabLine ctermfg=Gray ctermbg=DarkGray guifg=#a0a4aa guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=Gray ctermbg=DarkGray guifg=#d9d9d9 guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=Gray ctermbg=DarkBlue guifg=#d9d9d9 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Title ctermfg=White ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=DarkGray ctermbg=DarkGray guifg=#30343c guibg=#30343c guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=Blue ctermbg=DarkGray guifg=#a0b4cf guibg=#30343c guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi WarningMsg ctermfg=Black ctermbg=Yellow guifg=#1e2227 guibg=#c3b470 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=DarkCyan ctermbg=DarkBlue guifg=#5cbe97 guibg=#304a68 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link Boolean Constant
hi! link Character Constant
hi Comment ctermfg=Gray ctermbg=NONE guifg=#a0a4aa guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Conditional Statement
hi Constant ctermfg=DarkRed ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Define PreProc
hi! link Debug Special
hi! link Delimiter Special
hi Error ctermfg=DarkRed ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link Exception Statement
hi! link Float Constant
hi Function ctermfg=Magenta ctermbg=NONE guifg=#b1a3df guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Include PreProc
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Statement
hi! link PreCondit PreProc
hi PreProc ctermfg=Green ctermbg=NONE guifg=#b1c6ac guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Repeat Statement
hi Special ctermfg=DarkYellow ctermbg=NONE guifg=#bb8e67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link SpecialChar Special
hi! link SpecialComment Special
hi Statement ctermfg=DarkBlue ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link StorageClass Type
hi String ctermfg=DarkGreen ctermbg=NONE guifg=#8bbe67 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Structure Type
hi! link Tag Special
hi Todo ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=DarkMagenta ctermbg=NONE guifg=#8b5fc7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link Typedef Type
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi! link lCursor Cursor
if !has('gui_running')
  hi SpellBad ctermfg=DarkRed ctermbg=NONE guifg=#e07093 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellCap ctermfg=DarkBlue ctermbg=NONE guifg=#5c8ec7 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellLocal ctermfg=DarkMagenta ctermbg=NONE guifg=#8b5fc7 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=DarkCyan ctermbg=NONE guifg=#5cbe97 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
else
  hi SpellBad ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#e07093 cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellCap ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5c8ec7 cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellLocal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#8b5fc7 cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=#5cbe97 cterm=NONE,undercurl gui=NONE,undercurl
endif
let s:terminal_colors = ['#1e2227', '#e07093', '#8bbe67', '#bb8e67', '#5c8ec7', '#8b5fc7', '#5cbe97', '#d9d9d9', '#30343c', '#dfb4c9', '#b1c6ac', '#c3b470', '#a0b4cf', '#b1a3df', '#a0c4bd', '#ffffff']
if has('nvim')
  call execute(map(s:terminal_colors, {ind, val -> printf("let g:terminal_color_%d = '%s'", ind, val)}))
else
  let g:terminal_ansi_colors = s:terminal_colors
endif
finish

" Background: dark
" Color: black         #1e2227   ~         Black
" Color: darkgray      #30343c   ~         DarkGray
" Color: gray          #a0a4aa   ~         Gray
" Color: red           #e07093   ~         DarkRed
" Color: brightred     #dfb4c9   ~         Red
" Color: green         #8bbe67   ~         DarkGreen
" Color: brightgreen   #b1c6ac   ~         Green
" Color: yellow        #bb8e67   ~         DarkYellow
" Color: brightyellow  #c3b470   ~         Yellow
" Color: darkblue      #304a68   ~         DarkBlue
" Color: blue          #5c8ec7   ~         DarkBlue
" Color: brightblue    #a0b4cf   ~         Blue
" Color: magenta       #8b5fc7   ~         DarkMagenta
" Color: brightmagenta #b1a3df   ~         Magenta
" Color: cyan          #5cbe97   ~         DarkCyan
" Color: brightcyan    #a0c4bd   ~         Cyan
" Color: white         #d9d9d9   ~         Gray
" Color: brightwhite   #ffffff   ~         White
