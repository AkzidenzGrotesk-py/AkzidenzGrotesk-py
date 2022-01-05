" Gruber Darker Theme, by rexim, reinterpreted for (n)vim.
" See: https://github.com/rexim/gruber-darker-theme
" *NOT* an exact port, simply what I thought looked nice.


" Init
highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="gruber-darker"

" Normal stuff
hi Normal guifg=#e4e4e4 guibg=#181818
hi Comment guifg=#cc8c3c gui=italic

hi Constant guifg=#e4e4e4
hi String guifg=#749e5a
hi link Character String
hi Number guifg=#e4e4e4
hi Boolean guifg=#ffdd33 gui=bold

hi Identifier guifg=#e4e4e4
hi Function guifg=#e4e4e4

hi Statement guifg=#ffdd33 gui=bold
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi Operator guifg=#e4e4e4
hi link Keyword Statement
hi link Exception Statement

hi PreProc guifg=#95a99f
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Type guifg=#ffdd33 gui=bold
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi Special guifg=#e4e4e4
hi SpecialChar guifg=#749e5a
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

hi Underlined guifg=#96a6c8 gui=underline
hi Ignore guifg=#e4e4e4 gui=italic
hi Error guifg=#f43841 guibg=NONE
hi Todo guifg=#cc8c3c guibg=NONE

" The other stuff
hi LineNrAbove guifg=#333333
hi LineNrBelow guifg=#333333
hi LineNr guifg=#ffdd33

autocmd InsertEnter * hi LineNr gui=bold guibg=#030303
autocmd InsertLeave * hi LineNr gui=NONE guibg=#181818

hi CursorLineNr guifg=#333333
hi CursorLine guibg=#030303
hi CursorColumn guibg=#030303
hi Cursor guifg=#000000 guibg=#ffdd33
hi link lCursor Cursor
hi link CursorIM Cursor
hi link TermCursor Cursor
hi link TermCursorNC Cursor

hi MatchParen guifg=NONE guibg=#4E94CB gui=NONE
hi ModeMsg guifg=#333333
hi Question guifg=#ffdd33 gui=italic

hi VertSplit guifg=#181818 guibg=#333333
hi Folded guifg=#333333 guibg=NONE
hi ColorColumn guibg=#181818
hi SignColumn guibg=#181818

hi Visual guibg=#484848
hi ErrorMsg guifg=#f43841 guibg=NONE
hi WarningMsg guifg=#f43841 guibg=NONE

hi NonText guifg=#282828
hi SpecialKey guifg=#282828
hi EndOfBuffer guifg=#333333
hi StatusLine guifg=#e4e4e4 guibg=NONE
hi StatusLineNC guibg=#333333

hi Directory guifg=#e4e4e4

" Pmenu
hi Pmenu guifg=#e4e4e4 guibg=#333333
hi PmenuSel guifg=#000000 guibg=#ffdd33
hi PmenuSBar guifg=#333333 guibg=#333333
hi PmenuThumb guifg=#ffdd33 guibg=#ffdd33

" Spell checker
hi SpellBad guifg=#f43841 guibg=NONE gui=underline
hi SpellCap guifg=#f43841 guibg=NONE gui=NONE
hi SpellLocal guifg=#ffdd33 guibg=NONE gui=NONE
hi link SpellRare SpellLocal

" Set air/powerline theme
let g:airline_theme="atomic"

" Language specific
" HTML
hi htmlBold guifg=#e4e4e4 gui=bold
hi htmlH1 guifg=#e4e4e4
hi link htmlH2 htmlH1
hi link htmlH3 htmlH1
hi link htmlH4 htmlH1
hi link htmlH5 htmlH1
hi link htmlH6 htmlH1
hi htmlItalic guifg=#e4e4e4 gui=italic
hi link htmlLink Underlined
hi htmlTitle guifg=#e4e4e4 gui=NONE

" Markdown
hi markdownBlockquote guifg=#bfbfbf
hi markdownBold guifg=#e4e4e4 gui=bold
hi markdownCode guifg=#749e5a
hi link markdownCodeBlock markdownCode
hi link markdownCodeDelimiter markdownCode
hi markdownH1 guifg=#ffdd33 gui=bold
hi link markdownH2 markdownH1
hi link markdownH3 markdownH1
hi link markdownH4 markdownH1
hi link markdownH5 markdownH1
hi link markdownH6 markdownH1
hi link markdownHeadingDelimiter markdownH1
hi link markdownHeadingRule markdownH1
hi link markdownItalic htmlItalic
hi markdownListMarker guifg=#ffdd33
hi link mardownOrderedListMarker markdownListMarker
hi markdownRule guifg=#ffdd33
hi link markdownUrl Underlined
