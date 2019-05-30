"+----------------------------------------------+
" eTxt Theme
"
" Author: 0a00x
" License: MIT
"+----------------------------------------------+

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "etxt"

"+---------------+
"+ Color Palette +
"+---------------+
"+--- GUI ---+
let s:etxtAccentColor_gui = "#00bef0"
let s:etxtTextDark_gui = "#717171"
let s:etxtTextMed_gui = "#9a9a9a"
let s:etxtTextLight_gui = "#cccccc"
let s:etxtExtraDarkGrey_gui = "#141414"
let s:etxtDarkGrey_gui = "#1a1a1a"
let s:etxtExtraLightGrey_gui = "#5a5a5a"
let s:etxtLightGrey_gui = "#aaaaaa"
let s:etxtWhite_gui = "#ffffff"
let s:etxtRed_gui = "#990000"

"+--- Terminal ---+
let s:etxtAccentColor_term = "039"
let s:etxtTextDark_term = "059"
let s:etxtTextMed_term = "102"
let s:etxtTextLight_term = "188"
let s:etxtExtraDarkGrey_term = "016"
let s:etxtDarkGrey_term = "016"
let s:etxtExtraLightGrey_term = "059"
let s:etxtLightGrey_term = "145"
let s:etxtWhite_term = "231"
let s:etxtRed_term = "088"

function! s:hi(group, ctermfg, ctermbg, cterm, guifg, guibg, gui)
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:cterm != ""
    exec "hi " . a:group . " cterm=" . a:cterm
  endif
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:gui != ""
    exec "hi " . a:group . " gui=" . a:gui
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "bold", "", "bold", "")
call s:hi("Italic", "", "", "italic", "", "", "italic")
call s:hi("Underline", "", "", "underline", "", "", "underline")
call s:hi("BoldItalic", "", "", "bold,italic", "", "", "bold,italic")

"+--- Editor ---+
call s:hi("ColorColumn", "", "", "", "", "", "")
call s:hi("Cursor", "", "", "", "", "", "")
call s:hi("CursorLine", "", "", "", "", "", "")
call s:hi("Error", "", "", "", "", "", "")
call s:hi("LineNr", s:etxtAccentColor_term, s:etxtDarkGrey_term, "", s:etxtAccentColor_gui, s:etxtDarkGrey_gui, "")
call s:hi("MatchParen", "", "", "", "", "", "")
call s:hi("NonText", s:etxtTextLight_term, "", "", s:etxtTextLight_gui, "", "")
call s:hi("Normal", s:etxtTextLight_term, s:etxtDarkGrey_term, "", s:etxtTextLight_gui, s:etxtDarkGrey_gui, "")
call s:hi("PMenu", "", "", "", "", "", "")
call s:hi("PmenuSbar", "", "", "", "", "", "")
call s:hi("PMenuSel", "", "", "", "", "", "")
call s:hi("PmenuThumb", "", "", "", "", "", "")
call s:hi("SpecialKey", "", "", "", "", "", "")
call s:hi("SpellBad", s:etxtRed_term, "", "", s:etxtRed_gui, "", "underline")
call s:hi("SpellCap", "", "", "", "", "", "")
call s:hi("SpellLocal", "", "", "", "", "", "")
call s:hi("SpellRare", "", "", "", "", "", "")
call s:hi("Visual", s:etxtWhite_term, s:etxtExtraLightGrey_term, "", s:etxtWhite_gui, s:etxtExtraLightGrey_gui, "")
call s:hi("VisualNOS", "", "", "", "", "", "")

"+--- Gutter ---+
call s:hi("CursorColumn", "", "", "", "", "", "")
call s:hi("CursorLineNr", "", "", "", "", "", "")
call s:hi("Folded", s:etxtTextDark_term, s:etxtExtraDarkGrey_term, "", s:etxtTextDark_gui, s:etxtExtraDarkGrey_gui, "")
call s:hi("FoldColumn", s:etxtAccentColor_term, "NONE", "", s:etxtAccentColor_gui, "NONE", "")
call s:hi("SignColumn", "", "NONE", "", "", "NONE", "")

"+--- Diffs ---+
call s:hi("DiffAdd", "", "", "", "", "", "")
call s:hi("DiffDelete", "", "", "", "", "", "")
call s:hi("DiffChange", "", "", "", "", "", "")
call s:hi("DiffText", "", "", "", "", "", "")

"+--- Navigation ---+
call s:hi("Directory", "", "", "", "", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", "", "", "", "", "", "")
call s:hi("ErrorMsg", "", "", "", "", "", "")
call s:hi("ModeMsg", "", "", "", "", "", "")
call s:hi("MoreMsg", "", "", "", "", "", "")
call s:hi("Question", "", "", "", "", "", "")
call s:hi("StatusLine", "", "", "", "", "", "")
call s:hi("StatusLineNC", "", "", "", "", "", "")
call s:hi("StatusLineTerm", "", "", "", "", "", "")
call s:hi("StatusLineTermNC", "", "", "", "", "", "")
call s:hi("WarningMsg", "", "", "", "", "", "")
call s:hi("WildMenu", "", "", "", "", "", "")

"+--- Search ---+
call s:hi("IncSearch", "", "", "", "", "", "")
call s:hi("Search", "", "", "", "", "", "")

"+--- Tabs ---+
call s:hi("TabLine", "", "", "", "", "", "")
call s:hi("TabLineFill", "", "", "", "", "", "")
call s:hi("TabLineSel", s:etxtAccentColor_term, s:etxtDarkGrey_term, "", s:etxtAccentColor_gui, s:etxtDarkGrey_gui, "")

"+--- Window ---+
call s:hi("Title", "", "", "", "", "", "")
call s:hi("VertSplit", s:etxtDarkGrey_term, s:etxtDarkGrey_term, "", s:etxtDarkGrey_gui, s:etxtDarkGrey_gui, "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Character", "", "", "", "", "", "")
call s:hi("Comment", "", "", "", "", "", "")
call s:hi("Define", "", "", "", "", "", "")
call s:hi("Identifier", "", "", "", "", "", "")
call s:hi("Keyword", "", "", "", "", "", "")
call s:hi("Label", "", "", "", "", "", "")
call s:hi("Special", "", "", "", "", "", "")
call s:hi("SpecialChar", "", "", "", "", "", "")
call s:hi("SpecialComment", "", "", "", "", "", "")
call s:hi("String", "", "", "", "", "", "")
call s:hi("Structure", "", "", "", "", "", "")
call s:hi("Tag", "", "", "", "", "", "")
call s:hi("Todo", "", "", "", "", "", "")
call s:hi("Type", "", "", "", "", "", "")
call s:hi("Typedef", "", "", "", "", "", "")

"+------+
"+ etxt +
"+------+
call s:hi("etxtComment", s:etxtAccentColor_term, "", "", s:etxtAccentColor_gui, "", "italic")
call s:hi("etxtKeyword", s:etxtAccentColor_term, "", "", s:etxtAccentColor_gui, "", "bold")
call s:hi("etxtHeading", s:etxtTextDark_term, "", "", s:etxtTextDark_gui, "", "bold")
call s:hi("etxtItalic", s:etxtTextLight_term, "", "", s:etxtTextLight_gui, "", "italic")
call s:hi("etxtBold", s:etxtTextLight_term, "", "", s:etxtTextLight_gui, "", "bold")
call s:hi("etxtBoldItalic", s:etxtTextLight_term, "", "", s:etxtTextLight_gui, "", "bold,italic")

"+--- Keep this line ---+
execute "set background=dark"
