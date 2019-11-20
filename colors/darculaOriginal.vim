" This Source Code Form is subject to the terms of the Mozilla Public
" License, v. 2.0. If a copy of the MPL was not distributed with this
" file, You can obtain one at https://mozilla.org/MPL/2.0/.

let s:bg=[darcula#palette.statusLine, 0]
let s:fg=[darcula#palette.statusLineFg,0]
let s:muted=[darcula#palette.statusLineNC, 0]
let s:middle=[darcula#palette.gutter, 0]
let s:onMiddle=[darcula#palette.cursor, 0]
let s:mutedMiddle=s:middle
let s:onMutedMid=s:muted
let s:secondary=s:bg
let s:onSecondary=s:fg
let s:mutedSecondary=s:secondary
let s:onMutedSecondary=s:muted
let s:right=s:bg
let s:onRight=s:fg
let s:mutedRight=s:right
let s:onMutedRight=s:muted
let s:normal=s:bg
let s:onNormal=s:fg
let s:visual=s:bg
let s:onVisual=[darcula#palette.UIBlue, 0]
let s:insert=s:bg
let s:onInsert=[darcula#palette.UIGreen, 0]
let s:replace=s:bg
let s:onReplace=[darcula#palette.UIRed, 0]
let s:tabSel=[darcula#palette.tabLineSel, 0]
" let s:error=['#', 0]
" let s:warning=['#', 0]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:onNormal, s:normal, 'bold' ], [ s:onSecondary, s:secondary ] ]
let s:p.normal.right = [ [ s:onRight, s:right ], [ s:onSecondary, s:secondary ] ]
let s:p.inactive.right = [ [ s:onMutedRight, s:mutedRight ], [ s:onMutedSecondary, s:mutedSecondary ] ]
let s:p.inactive.left =  [ [ s:onMutedSecondary, s:mutedSecondary ], [ s:onMutedSecondary, s:mutedSecondary ] ]
let s:p.insert.left = [ [ s:onInsert, s:insert, 'bold' ], [ s:onSecondary, s:secondary ] ]
let s:p.replace.left = [ [ s:onReplace, s:replace, 'bold' ], [ s:onSecondary, s:secondary ] ]
let s:p.visual.left = [ [ s:onVisual, s:visual, 'bold' ], [ s:onSecondary, s:secondary ] ]
let s:p.normal.middle = [ [ s:onMiddle, s:middle ] ]
let s:p.inactive.middle = [ [ s:onMutedMid, s:mutedMiddle ] ]
let s:p.tabline.left = [ [ s:fg, s:bg ] ]
let s:p.tabline.tabsel = [ [ s:fg, s:tabSel ] ]
let s:p.tabline.middle = [ [ s:bg, s:bg ] ]
let s:p.tabline.right = copy(s:p.normal.right)
" let s:p.normal.error = [ [ s:error, s:secondary ] ]
" let s:p.normal.warning = [ [ s:warning, s:secondary ] ]

let g:lightline#colorscheme#darculaOriginal#palette = lightline#colorscheme#flatten(s:p)
