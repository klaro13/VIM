" Vim color file
"--------------------------------------------------------------------------------
"         File: klaro.vim
"   Maintainer: Klaus Rothemund (klaus.rothemund@klaro-informatik.de)
"          URL: http://klaro-informatik.de
"  Last Change: 01.12.2018
"--------------------------------------------------------------------------------

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "klaro"

hi Normal                                                           guifg=black      guibg=white
hi Comment     term=bold         ctermfg=DarkGreen                  guifg=DarkGreen
hi Constant    term=underline    ctermfg=Red                        guifg=Red
hi Special     term=bold         ctermfg=Magenta                    guifg=Magenta
hi Identifier  term=underline    ctermfg=Blue                       guifg=Blue
hi Statement   term=bold         ctermfg=DarkRed                    guifg=Blue                        gui=NONE
hi PreProc     term=underline    ctermfg=Magenta                    guifg=Magenta
hi Type        term=underline    ctermfg=Blue                       guifg=Blue                        gui=NONE
hi Visual      term=reverse      ctermfg=Yellow    ctermbg=Red      guifg=Black       guibg=Yellow    gui=NONE
hi Search      term=reverse      ctermfg=Black     ctermbg=Cyan     guifg=Black       guibg=Cyan      gui=NONE
hi Tag         term=bold         ctermfg=DarkGreen                  guifg=DarkGreen
hi Error       term=reverse      ctermfg=15        ctermbg=9        guifg=White       guibg=Red
hi Todo        term=standout     ctermfg=Black     ctermbg=Yellow   guifg=Blue        guibg=Yellow
hi StatusLine  term=bold,reverse ctermfg=Yellow    ctermbg=DarkGray guifg=Yellow      guibg=DarkGray  gui=NONE cterm=NONE

hi! link MoreMsg        Comment
hi! link Question       Comment
hi! link ErrorMsg       Visual
hi! link WarningMsg     ErrorMsg

hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Function        Identifier
hi link Conditional     Statement
hi link Repeat          Statement
hi link Label           Statement
hi link Operator        Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
