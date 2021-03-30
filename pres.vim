if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

highlight! link presHeading markdownH3
highlight! link presCmdline Comment
highlight! link presPrompt Identifier
highlight! link presColor Comment
highlight! presItalic gui=italic
highlight! presBold gui=bold
highlight! presUnderline gui=underline
highlight! presStrikeThrough gui=strikethrough

" Syntax
syntax region presHeading matchgroup=markdownHeadingDelimiter start='^#' end='$'
syntax region presCmdline matchgroup=presPrompt start='^\$' end='$'
syntax region presColor start='\[[fFbB][0-7]\]{' end='}'
syntax match Comment '^%.*'

" Text styles
syntax match presItalic        '/[^/]*/'
syntax match presBold          '\*[^*]*\*'
syntax match presUnderline     '_[^_]*_'
syntax match presStrikeThrough '=[^=]*='

setlocal commentstring=%%s
let b:current_syntax = "pres"
