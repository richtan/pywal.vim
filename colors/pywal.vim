" pywal.vim -- Vim color scheme template for pywal.

" GUI colors
let s:gui_black = "00"
let s:gui_green2 = "10"
let s:gui_yellow2 = "11"
let s:gui_gray = "08"
let s:gui_blue2 = "12"
let s:gui_lightgray = "07"
let s:gui_magenta2 = "13"
let s:gui_white = "15"
let s:gui_red = "01"
let s:gui_red2 = "09"
let s:gui_yellow = "03"
let s:gui_green = "02"
let s:gui_cyan = "06"
let s:gui_blue = "04"
let s:gui_magenta = "05"
let s:gui_cyan2 = "14"

" 1, 2, 4, 6, 9, F
let s:cterm_black = "00"
let s:cterm_green2 = "10"
let s:cterm_yellow2 = "11"
let s:cterm_gray = "08"
let s:cterm_blue2 = "12"
let s:cterm_lightgray = "07"
let s:cterm_magenta2 = "13"
let s:cterm_white = "15"
let s:cterm_red = "01"
let s:cterm_red2 = "09"
let s:cterm_yellow = "03"
let s:cterm_green = "02"
let s:cterm_cyan = "06"
let s:cterm_blue = "04"
let s:cterm_magenta = "05"
let s:cterm_cyan2 = "14"

let s:cursor_gray = "237"

" Theme setup
hi clear
syntax reset
let g:colors_name = "pywal"

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
  let l:attr = get(a:, 1, "")
  let l:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if l:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if l:guisp != ""
    exec "hi " . a:group . " guisp=#" . l:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",        s:gui_lightgray, s:gui_black, s:cterm_lightgray, s:cterm_black, "", "")
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("Directory",     s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("Error",         s:gui_black, s:gui_red, s:cterm_black, s:cterm_red, "", "")
call <sid>hi("ErrorMsg",      s:gui_red, s:gui_black, s:cterm_red, s:cterm_black, "", "")
call <sid>hi("Exception",     s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("FoldColumn",    s:gui_cyan, s:gui_green2, s:cterm_cyan, s:cterm_black, "", "")
call <sid>hi("Folded",        s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_green2, "", "")
call <sid>hi("IncSearch",     s:gui_green2, s:gui_red2, s:cterm_green2, s:cterm_red2, "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("MatchParen",    "", s:gui_gray, "", s:cterm_gray,  "", "")
call <sid>hi("ModeMsg",       s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("MoreMsg",       s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("Question",      s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("Search",        s:gui_green2, s:gui_yellow, s:cterm_green2, s:cterm_yellow,  "", "")
call <sid>hi("Substitute",    s:gui_green2, s:gui_yellow, s:cterm_green2, s:cterm_yellow, "none", "")
call <sid>hi("SpecialKey",    s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("TooLong",       s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("Underlined",    s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("Visual",        "", s:gui_yellow2, "", s:cterm_gray, "", "")
call <sid>hi("VisualNOS",     s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("WarningMsg",    s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("WildMenu",      s:gui_red, s:gui_yellow, s:cterm_red, "", "", "")
call <sid>hi("Title",         s:gui_blue, "", s:cterm_blue, "", "none", "")
call <sid>hi("Conceal",       s:gui_blue, s:gui_black, s:cterm_blue, s:cterm_black, "", "")
call <sid>hi("Cursor",        s:gui_black, s:gui_lightgray, s:cterm_black, s:cterm_lightgray, "", "")
call <sid>hi("NonText",       s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("LineNr",        s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_black, "", "")
call <sid>hi("SignColumn",    s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_black, "", "")
call <sid>hi("StatusLine",    s:gui_blue2, s:gui_yellow2, s:cterm_blue2, s:cterm_yellow2, "none", "")
call <sid>hi("StatusLineNC",  s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_black, "none", "")
call <sid>hi("VertSplit",     s:gui_yellow2, s:gui_yellow2, s:cterm_yellow2, s:cterm_yellow2, "none", "")
call <sid>hi("ColorColumn",   "", s:gui_green2, "", s:cursor_gray, "none", "")
call <sid>hi("CursorColumn",  "", s:gui_green2, "", s:cursor_gray, "none", "")
call <sid>hi("CursorLine",    "", s:gui_green2, "", s:cursor_gray, "none", "")
call <sid>hi("CursorLineNr",  s:gui_blue2, s:gui_green2, s:cterm_blue2, s:cterm_black, "", "")
call <sid>hi("QuickFixLine",  "", s:gui_green2, "", s:cterm_black, "none", "")
call <sid>hi("PMenu",         s:gui_lightgray, s:gui_green2, s:cterm_lightgray, s:cterm_gray, "none", "")
call <sid>hi("PMenuSel",      s:gui_green2, s:gui_lightgray, s:cterm_black, s:cterm_lightgray, "", "")
call <sid>hi("TabLine",       s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_black, "none", "")
call <sid>hi("TabLineFill",   s:gui_gray, s:gui_green2, s:cterm_gray, s:cterm_black, "none", "")
call <sid>hi("TabLineSel",    s:gui_green, s:gui_green2, s:cterm_green, s:cterm_black, "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("Character",    s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("Comment",      s:gui_gray, "", "59", "", "", "")
call <sid>hi("Conditional",  s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("Constant",     s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("Define",       s:gui_magenta, "", s:cterm_magenta, "", "none", "")
call <sid>hi("Delimiter",    s:gui_cyan2, "", s:cterm_cyan2, "", "", "")
call <sid>hi("Float",        s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("Function",     s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("Identifier",   s:gui_red, "", s:cterm_red, "", "none", "")
call <sid>hi("Include",      s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("Keyword",      s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("Label",        s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("Number",       s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("Operator",     s:gui_lightgray, "", s:cterm_lightgray, "", "none", "")
call <sid>hi("PreProc",      s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("Repeat",       s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("Special",      s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("SpecialChar",  s:gui_cyan2, "", s:cterm_cyan2, "", "", "")
call <sid>hi("Statement",    s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("StorageClass", s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("String",       s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("Structure",    s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("Tag",          s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("Todo",         s:gui_yellow, s:gui_green2, s:cterm_yellow, s:cterm_black, "", "")
call <sid>hi("Type",         s:gui_yellow, "", s:cterm_yellow, "", "none", "")
call <sid>hi("Typedef",      s:gui_yellow, "", s:cterm_yellow, "", "", "")

" C highlighting
call <sid>hi("cOperator",   s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("cPreCondit",  s:gui_magenta, "", s:cterm_magenta, "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("csAttribute",             s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("csModifier",              s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("csType",                  s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("csContextualStatement",   s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("csNewDecleration",        s:gui_red, "", s:cterm_red, "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("cssClassName",   s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("cssColor",       s:gui_cyan, "", s:cterm_cyan, "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:gui_green, s:gui_green2,  s:cterm_green, s:cterm_black, "", "")
call <sid>hi("DiffChange",   s:gui_gray, s:gui_green2,  s:cterm_gray, s:cterm_black, "", "")
call <sid>hi("DiffDelete",   s:gui_red, s:gui_green2,  s:cterm_red, s:cterm_black, "", "")
call <sid>hi("DiffText",     s:gui_blue, s:gui_green2,  s:cterm_blue, s:cterm_black, "", "")
call <sid>hi("DiffAdded",    s:gui_green, s:gui_black,  s:cterm_green, s:cterm_black, "", "")
call <sid>hi("DiffFile",     s:gui_red, s:gui_black,  s:cterm_red, s:cterm_black, "", "")
call <sid>hi("DiffNewFile",  s:gui_green, s:gui_black,  s:cterm_green, s:cterm_black, "", "")
call <sid>hi("DiffLine",     s:gui_blue, s:gui_black,  s:cterm_blue, s:cterm_black, "", "")
call <sid>hi("DiffRemoved",  s:gui_red, s:gui_black,  s:cterm_red, s:cterm_black, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("gitcommitSummary",        s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("gitcommitComment",        s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("gitcommitUntracked",      s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("gitcommitSelected",       s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("gitcommitHeader",         s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("gitcommitBranch",         s:gui_red2, "", s:cterm_red2, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:gui_red, "", s:cterm_red, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:gui_red, "", s:cterm_red, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:gui_green, "", s:cterm_green, "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:gui_green, s:gui_green2, s:cterm_green, s:cterm_black, "", "")
call <sid>hi("GitGutterChange",  s:gui_blue, s:gui_green2, s:cterm_blue, s:cterm_black, "", "")
call <sid>hi("GitGutterDelete",  s:gui_red, s:gui_green2, s:cterm_red, s:cterm_black, "", "")
call <sid>hi("GitGutterChangeDelete",  s:gui_magenta, s:gui_green2, s:cterm_magenta, s:cterm_black, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("htmlItalic",  s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("htmlEndTag",  s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("htmlTag",     s:gui_lightgray, "", s:cterm_lightgray, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("javaScriptBraces",  s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("javaScriptNumber",  s:gui_red2, "", s:cterm_red2, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("jsStatement",         s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("jsReturn",            s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("jsThis",              s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("jsClassDefinition",   s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("jsFunction",          s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("jsFuncName",          s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("jsFuncCall",          s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("jsClassFuncName",     s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("jsClassMethodType",   s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("jsRegexpString",      s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("jsGlobalObjects",     s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("jsGlobalNodeObjects", s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("jsExceptions",        s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("jsBuiltins",          s:gui_yellow, "", s:cterm_yellow, "", "", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("mailQuoted2",  s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("mailQuoted3",  s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("mailQuoted4",  s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("mailQuoted5",  s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("mailQuoted6",  s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("mailURL",      s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("mailEmail",    s:gui_blue, "", s:cterm_blue, "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("markdownError",             s:gui_lightgray, s:gui_black, s:cterm_lightgray, s:cterm_black, "", "")
call <sid>hi("markdownCodeBlock",         s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:gui_blue, "", s:cterm_blue, "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:gui_lightgray, "", s:cterm_lightgray, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("phpComparison",      s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("phpParent",          s:gui_lightgray, "", s:cterm_lightgray, "", "", "")
call <sid>hi("phpMethodsVar",      s:gui_cyan, "", s:cterm_cyan, "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("pythonRepeat",    s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("pythonInclude",   s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("pythonStatement", s:gui_magenta, "", s:cterm_magenta, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:gui_blue, "", s:cterm_blue, "", "", "")
call <sid>hi("rubyConstant",                s:gui_yellow, "", s:cterm_yellow, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:gui_cyan2, "", s:cterm_cyan2, "", "", "")
call <sid>hi("rubyRegexp",                  s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("rubySymbol",                  s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("rubyStringDelimiter",         s:gui_green, "", s:cterm_green, "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:gui_red, "", s:cterm_red, "", "", "")
call <sid>hi("sassClassChar",  s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("sassInclude",    s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("sassMixing",     s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("sassMixinName",  s:gui_blue, "", s:cterm_blue, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:gui_green, s:gui_green2, s:cterm_green, s:cterm_black, "", "")
call <sid>hi("SignifySignChange",  s:gui_blue, s:gui_green2, s:cterm_blue, s:cterm_black, "", "")
call <sid>hi("SignifySignDelete",  s:gui_red, s:gui_green2, s:cterm_red, s:cterm_black, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", "", "undercurl", s:gui_red)
call <sid>hi("SpellLocal",   "", "", "", "", "undercurl", s:gui_cyan)
call <sid>hi("SpellCap",     "", "", "", "", "undercurl", s:gui_blue)
call <sid>hi("SpellRare",    "", "", "", "", "undercurl", s:gui_magenta)

" Startify highlighting
call <sid>hi("StartifyBracket",  s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("StartifyFile",     s:gui_white, "", s:cterm_white, "", "", "")
call <sid>hi("StartifyFooter",   s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("StartifyHeader",   s:gui_green, "", s:cterm_green, "", "", "")
call <sid>hi("StartifyNumber",   s:gui_red2, "", s:cterm_red2, "", "", "")
call <sid>hi("StartifyPath",     s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("StartifySection",  s:gui_magenta, "", s:cterm_magenta, "", "", "")
call <sid>hi("StartifySelect",   s:gui_cyan, "", s:cterm_cyan, "", "", "")
call <sid>hi("StartifySlash",    s:gui_gray, "", s:cterm_gray, "", "", "")
call <sid>hi("StartifySpecial",  s:gui_gray, "", s:cterm_gray, "", "", "")

" Java highlighting
call <sid>hi("javaOperator",     s:gui_blue, "", s:cterm_blue, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:gui_black s:gui_green2 s:gui_yellow2 s:gui_gray  s:gui_blue2  s:gui_lightgray  s:gui_magenta2  s:gui_white  s:gui_red  s:gui_red2 s:gui_yellow  s:gui_green  s:gui_cyan  s:gui_blue  s:gui_magenta  s:gui_cyan2
unlet s:cterm_black s:cterm_green2 s:cterm_yellow2 s:cterm_gray s:cterm_blue2 s:cterm_lightgray s:cterm_magenta2 s:cterm_white s:cterm_red s:cterm_red2 s:cterm_yellow s:cterm_green s:cterm_cyan s:cterm_blue s:cterm_magenta s:cterm_cyan2
