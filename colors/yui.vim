" Name:         Yui
" Author:       Florian B <yuuki@protonmail.com>
" Maintainer:   Florian B <yuuki@protonmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Sun 21 Jul 2019 03:59:47 PM CEST

" Generated by Colortemplate v2.0.0

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'yui'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:italics = (((&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')) && !has('iOS')) || has('nvim')

let s:italics = 1

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#72645f', '#d50711', '#336f15', '#72645f',
        \ '#125ea9', '#72645f', '#72645f', '#72645f', '#72645f', '#d50711',
        \ '#336f15', '#72645f', '#125ea9', '#72645f', '#72645f', '#72645f']
  if has('nvim')
    let g:terminal_color_0 = '#72645f'
    let g:terminal_color_1 = '#d50711'
    let g:terminal_color_2 = '#336f15'
    let g:terminal_color_3 = '#72645f'
    let g:terminal_color_4 = '#125ea9'
    let g:terminal_color_5 = '#72645f'
    let g:terminal_color_6 = '#72645f'
    let g:terminal_color_7 = '#72645f'
    let g:terminal_color_8 = '#72645f'
    let g:terminal_color_9 = '#d50711'
    let g:terminal_color_10 = '#336f15'
    let g:terminal_color_11 = '#72645f'
    let g:terminal_color_12 = '#125ea9'
    let g:terminal_color_13 = '#72645f'
    let g:terminal_color_14 = '#72645f'
    let g:terminal_color_15 = '#72645f'
  endif
  hi! link EndOfBuffer NonText
  hi! link QuickFixLine Search
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Conditional Statement
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi! link Exception Statement
  hi! link Float Number
  hi! link Function Identifier
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi! link Repeat Statement
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi! link StorageClass Type
  hi! link String Constant
  hi! link Structure Type
  hi! link Tag Special
  hi! link Typedef Type
  hi Normal guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE cterm=NONE
  hi Terminal guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE cterm=NONE
  hi ColorColumn guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#9f918c guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Cursor guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi CursorLineNr guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi DiffAdd guifg=#408000 guibg=#e8ffd1 guisp=NONE gui=NONE cterm=NONE
  hi! link diffAdded DiffAdd
  hi DiffChange guifg=#7b6a3d guibg=#f9ffa3 guisp=NONE gui=NONE cterm=NONE
  hi! link diffChanged DiffChange
  hi DiffDelete guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE cterm=NONE
  hi! link diffRemoved DiffDelete
  hi! link diffComment Comment
  hi DiffText guifg=#00588f guibg=#e0f3ff guisp=NONE gui=NONE cterm=NONE
  hi Directory guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=#9f918c guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Folded guifg=#d2bdb7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi IncSearch guifg=#ffffff guibg=#72645f guisp=NONE gui=NONE cterm=NONE
  hi Search guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi LineNr guifg=#d2bdb7 guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi NonText guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Pmenu guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi PmenuSbar guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi! link PmenuSel WildMenu
  hi PmenuThumb guifg=NONE guibg=#e8ffd1 guisp=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Question guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SignColumn guifg=#72645f guibg=#efeae5 guisp=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Special guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE cterm=NONE
  hi SpellCap guifg=NONE guibg=NONE guisp=NONE gui=undercurl ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi SpellRare guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi StatusLine guifg=#72645f guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi StatusLineNC guifg=#72645f guibg=#EAE0D6 guisp=NONE gui=NONE cterm=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine StatusLine
  hi TabLineFill guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi! link TabLineSel WildMenu
  hi Title guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi VertSplit guifg=#9f918c guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=#ffffff guisp=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#7b6a3d guibg=#f9ffa3 guisp=NONE gui=NONE cterm=NONE
  hi WildMenu guifg=#408000 guibg=#e8ffd1 guisp=NONE gui=NONE cterm=NONE
  hi Comment guifg=#72645f guibg=NONE guisp=NONE gui=italic cterm=italic
  hi Constant guifg=#72645f guibg=NONE guisp=NONE gui=bold cterm=bold
  hi Error guifg=#a7111d guibg=#ffe0e0 guisp=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Statement guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi Todo guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
  hi Type guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Underlined guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi! link lCursor Cursor
  hi CursorIM guifg=NONE guibg=fg guisp=NONE gui=NONE cterm=NONE
  hi ToolbarLine guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton guifg=#72645f guibg=NONE guisp=NONE gui=NONE cterm=NONE
  hi! link jsParensError Normal
  hi mkdHeading guifg=#72645f guibg=#efeae5 guisp=NONE gui=bold cterm=bold
  hi mkdItalic guifg=#72645f guibg=#efeae5 guisp=NONE gui=italic cterm=italic
  hi! link mkdCode Normal
  hi! link mkdCodeDelimiter Normal
  hi! link helpHyperTextJump Comment
  hi! link helpExample Normal
  if !s:italics
    hi Comment gui=NONE cterm=NONE
    hi mkdItalic gui=NONE cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

if s:t_Co >= 256
  hi! link EndOfBuffer NonText
  hi! link QuickFixLine Search
  hi! link Boolean Constant
  hi! link Character Constant
  hi! link Conditional Statement
  hi! link Define PreProc
  hi! link Debug Special
  hi! link Delimiter Special
  hi! link Exception Statement
  hi! link Float Number
  hi! link Function Identifier
  hi! link Include PreProc
  hi! link Keyword Statement
  hi! link Label Statement
  hi! link Macro PreProc
  hi! link Number Constant
  hi! link Operator Statement
  hi! link PreCondit PreProc
  hi! link Repeat Statement
  hi! link SpecialChar Special
  hi! link SpecialComment Special
  hi! link StorageClass Type
  hi! link String Constant
  hi! link Structure Type
  hi! link Tag Special
  hi! link Typedef Type
  hi Normal ctermfg=241 ctermbg=255 cterm=NONE
  hi Terminal ctermfg=241 ctermbg=255 cterm=NONE
  hi ColorColumn ctermfg=241 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=246 ctermbg=NONE cterm=NONE
  hi Cursor ctermfg=241 ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=231 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=231 cterm=NONE
  hi CursorLineNr ctermfg=NONE ctermbg=231 cterm=NONE
  hi DiffAdd ctermfg=28 ctermbg=194 cterm=NONE
  hi! link diffAdded DiffAdd
  hi DiffChange ctermfg=94 ctermbg=229 cterm=NONE
  hi! link diffChanged DiffChange
  hi DiffDelete ctermfg=124 ctermbg=224 cterm=NONE
  hi! link diffRemoved DiffDelete
  hi! link diffComment Comment
  hi DiffText ctermfg=24 ctermbg=255 cterm=NONE
  hi Directory ctermfg=241 ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=124 ctermbg=224 cterm=NONE
  hi FoldColumn ctermfg=246 ctermbg=NONE cterm=NONE
  hi Folded ctermfg=181 ctermbg=NONE cterm=NONE
  hi IncSearch ctermfg=231 ctermbg=241 cterm=NONE
  hi Search ctermfg=241 ctermbg=231 cterm=NONE
  hi LineNr ctermfg=181 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=NONE ctermbg=NONE cterm=bold,underline
  hi ModeMsg ctermfg=241 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=241 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=241 ctermbg=NONE cterm=NONE
  hi Pmenu ctermfg=241 ctermbg=231 cterm=NONE
  hi PmenuSbar ctermfg=241 ctermbg=231 cterm=NONE
  hi! link PmenuSel WildMenu
  hi PmenuThumb ctermfg=NONE ctermbg=194 cterm=NONE
  hi PreProc ctermfg=241 ctermbg=NONE cterm=NONE
  hi Question ctermfg=241 ctermbg=NONE cterm=NONE
  hi SignColumn ctermfg=241 ctermbg=255 cterm=NONE
  hi SpecialKey ctermfg=241 ctermbg=NONE cterm=NONE
  hi Special ctermfg=241 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=124 ctermbg=224 cterm=NONE
  hi SpellCap ctermfg=NONE ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=241 ctermbg=NONE cterm=NONE
  hi SpellRare ctermfg=241 ctermbg=NONE cterm=NONE
  hi StatusLine ctermfg=241 ctermbg=231 cterm=NONE
  hi StatusLineNC ctermfg=241 ctermbg=254 cterm=NONE
  hi! link StatusLineTerm StatusLine
  hi! link StatusLineTermNC StatusLineNC
  hi! link TabLine StatusLine
  hi TabLineFill ctermfg=NONE ctermbg=231 cterm=NONE
  hi! link TabLineSel WildMenu
  hi Title ctermfg=NONE ctermbg=NONE cterm=NONE
  hi VertSplit ctermfg=246 ctermbg=NONE cterm=NONE
  hi Visual ctermfg=NONE ctermbg=231 cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=231 cterm=NONE
  hi WarningMsg ctermfg=94 ctermbg=229 cterm=NONE
  hi WildMenu ctermfg=28 ctermbg=194 cterm=NONE
  hi Comment ctermfg=241 ctermbg=NONE cterm=italic
  hi Constant ctermfg=241 ctermbg=NONE cterm=bold
  hi Error ctermfg=124 ctermbg=224 cterm=NONE
  hi Identifier ctermfg=241 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=241 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=241 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=NONE ctermbg=NONE cterm=underline
  hi Type ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=241 ctermbg=NONE cterm=NONE
  hi! link lCursor Cursor
  hi CursorIM ctermfg=NONE ctermbg=fg cterm=NONE
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=241 ctermbg=NONE cterm=NONE
  hi! link jsParensError Normal
  hi mkdHeading ctermfg=241 ctermbg=255 cterm=bold
  hi mkdItalic ctermfg=241 ctermbg=255 cterm=italic
  hi! link mkdCode Normal
  hi! link mkdCodeDelimiter Normal
  hi! link helpHyperTextJump Comment
  hi! link helpExample Normal
  if !s:italics
    hi Comment cterm=NONE
    hi mkdItalic cterm=NONE
  endif
  unlet s:t_Co s:italics
  finish
endif

" Background: light
" Color: black                   #72645f    ~
" Color: red                     #d50711    ~
" Color: green                   #336f15    ~
" Color: blue                    #125ea9    ~
" Color: green_background        #e8ffd1    ~
" Color: green_foreground        #408000    ~
" Color: red_background          #ffe0e0    ~
" Color: red_foreground          #a7111d    ~
" Color: yellow_background       #f9ffa3    ~
" Color: yellow_foreground       #7b6a3d    ~
" Color: blue_background         #e0f3ff    ~
" Color: blue_foreground         #00588f    ~
" Color: white                   #efeae5    ~
" Color: brightblack             #9f918c    ~
" Color: brightwhite             #ffffff    ~
" Color: statusline_nc           #EAE0D6    ~
" Color: brightestblack          #d2bdb7    ~
" Term colors: black red green black blue black black black
" Term colors: black red green black blue black black black
" vim: et ts=2 sw=2
