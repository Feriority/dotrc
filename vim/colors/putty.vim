" Vim color file - putty
" Generated by http://bytefluent.com/vivify 2012-03-08
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "putty"

hi IncSearch guifg=#bebebe guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=black ctermbg=darkgreen cterm=NONE
hi WildMenu guifg=#000000 guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
"hi SignColumn -- no settings --
hi SpecialComment guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Typedef guifg=#00BB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi Title guifg=#ff00ff guibg=NONE guisp=NONE gui=bold ctermfg=201 ctermbg=NONE cterm=bold
hi Folded guifg=#00008b guibg=#ffffff guisp=#ffffff gui=NONE ctermfg=18 ctermbg=15 cterm=NONE
hi PreCondit guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Include guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
"hi StatusLineNC -- no settings --
"hi CTagsMember -- no settings --
hi NonText guifg=#0000ff guibg=#000000 guisp=#000000 gui=bold ctermfg=21 ctermbg=NONE cterm=bold
"hi CTagsGlobalConstant -- no settings --
hi DiffText guifg=NONE guibg=#ff0000 guisp=#ff0000 gui=bold ctermfg=NONE ctermbg=196 cterm=bold
hi ErrorMsg guifg=#ffffff guibg=#ff0000 guisp=#ff0000 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi Ignore guifg=#bebebe guibg=NONE guisp=NONE gui=NONE ctermfg=7 ctermbg=NONE cterm=NONE
hi Debug guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#00BBBB guibg=#000000 guisp=#000000 gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Conditional guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#00BB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
"hi Todo -- no settings --
hi Special guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi LineNr guifg=#BBBB00 guibg=NONE guisp=NONE gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
hi StatusLine guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=4 cterm=bold
hi Normal guifg=#bebebe guibg=#000000 guisp=#000000 gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi Label guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#88dd88 guibg=#949698 guisp=#949698 gui=NONE ctermfg=114 ctermbg=246 cterm=NONE
hi Search guifg=#bebebe guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=black ctermbg=darkgreen cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Statement guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#0000ff guibg=#000000 guisp=#000000 gui=NONE ctermfg=14 ctermbg=NONE cterm=NONE
hi Character guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Float guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Number guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Boolean guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Operator guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question guifg=#2e8b57 guibg=NONE guisp=NONE gui=bold ctermfg=29 ctermbg=NONE cterm=bold
hi WarningMsg guifg=#ff0000 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi DiffDelete guifg=#0000ff guibg=#e0ffff guisp=#e0ffff gui=bold ctermfg=21 ctermbg=195 cterm=bold
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
"hi CursorColumn -- no settings --
hi Define guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi Function guifg=#00BBBB guibg=#000000 guisp=#000000 gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#00008b guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=18 ctermbg=7 cterm=NONE
hi PreProc guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual guifg=#bebebe guibg=#bebebe guisp=#bebebe gui=NONE ctermfg=black ctermbg=darkgreen cterm=NONE
hi MoreMsg guifg=#2e8b57 guibg=NONE guisp=NONE gui=bold ctermfg=29 ctermbg=NONE cterm=bold
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
hi Exception guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
hi Keyword guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
hi Type guifg=#00BB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#efface guisp=#efface gui=NONE ctermfg=NONE ctermbg=230 cterm=NONE
hi Cursor guifg=NONE guibg=#00ff00 guisp=#00ff00 gui=NONE ctermfg=NONE ctermbg=10 cterm=NONE
"hi SpellLocal -- no settings --
"hi Error -- no settings --
hi PMenu guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi SpecialKey guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi Constant guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
hi Tag guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
hi String guifg=#BB0000 guibg=#000000 guisp=#000000 gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#BBBB00 guisp=#BBBB00 gui=NONE ctermfg=NONE ctermbg=142 cterm=NONE
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
hi Repeat guifg=#BBBB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=142 ctermbg=NONE cterm=NONE
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi Structure guifg=#00BB00 guibg=#000000 guisp=#000000 gui=NONE ctermfg=34 ctermbg=NONE cterm=NONE
hi Macro guifg=#BB00BB guibg=#000000 guisp=#000000 gui=NONE ctermfg=5 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
hi DiffAdd guifg=NONE guibg=#add8e6 guisp=#add8e6 gui=NONE ctermfg=NONE ctermbg=152 cterm=NONE
"hi TabLine -- no settings --
hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
hi lcursor guifg=NONE guibg=#00ffff guisp=#00ffff gui=NONE ctermfg=NONE ctermbg=14 cterm=NONE
hi cursorim guifg=#ffffff guibg=#96cdcd guisp=#96cdcd gui=bold ctermfg=15 ctermbg=152 cterm=bold
hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
"hi clear -- no settings --
hi underline guifg=#afafff guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
