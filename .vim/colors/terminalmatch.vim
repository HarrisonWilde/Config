" terminalmatch.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   Harrison Wilde (http://hwil.de/)
" Version:  1.0.0
" --------------------------------------------------------------

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "terminalmatch"

"}}}
" Vim UI {{{
hi Normal              ctermfg=7
hi Cursor              ctermfg=7     ctermbg=1
hi CursorLine          ctermbg=15     cterm=NONE
hi MatchParen          ctermfg=7     ctermbg=NONE  cterm=underline
hi Pmenu               ctermfg=7    ctermbg=0
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=15
hi PmenuSel            ctermfg=15     ctermbg=4
hi ColorColumn         ctermbg=15
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=2    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=3    ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=5    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=15
hi LineNr              ctermfg=15     ctermbg=NONE
hi CursorLineNr        ctermfg=3    ctermbg=0
hi Visual              ctermfg=15     ctermbg=4
hi IncSearch           ctermfg=15     ctermbg=5    cterm=NONE
hi Search              ctermfg=15     ctermbg=2
hi StatusLine          ctermfg=7     ctermbg=0     cterm=bold
hi StatusLineNC        ctermfg=15     ctermbg=0     cterm=bold
hi VertSplit           ctermfg=15     ctermbg=0     cterm=NONE
hi TabLine             ctermfg=15     ctermbg=0     cterm=NONE
hi TabLineSel          ctermfg=7     ctermbg=0
hi Folded              ctermfg=4     ctermbg=0     cterm=bold
hi Conceal             ctermfg=4     ctermbg=NONE
hi Directory           ctermfg=4
hi Title               ctermfg=3     cterm=bold
hi ErrorMsg            ctermfg=7    ctermbg=1
hi DiffAdd             ctermfg=15     ctermbg=2
hi DiffChange          ctermfg=15     ctermbg=3
hi DiffDelete          ctermfg=15     ctermbg=1
hi DiffText            ctermfg=15     ctermbg=3    cterm=bold
hi User1               ctermfg=1     ctermbg=0
hi User2               ctermfg=4     ctermbg=0
hi User3               ctermfg=2     ctermbg=0
hi User4               ctermfg=3     ctermbg=0
hi User5               ctermfg=5     ctermbg=0
hi User6               ctermfg=4     ctermbg=0
hi User7               ctermfg=7     ctermbg=0
hi User8               ctermfg=15     ctermbg=0
hi User9               ctermfg=7    ctermbg=5
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=7
hi Comment         ctermfg=15
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=4
hi String          ctermfg=12
hi Keyword         ctermfg=1
hi Todo            ctermfg=7  ctermbg=NONE     cterm=bold,underline
hi Function        ctermfg=5
hi Identifier      ctermfg=7   cterm=NONE
hi Statement       ctermfg=1   cterm=bold
hi Constant        ctermfg=4
hi Number          ctermfg=4
hi Boolean         ctermfg=4
hi Special         ctermfg=4
hi Ignore          ctermfg=15
hi PreProc         ctermfg=1   cterm=bold
hi Operator        ctermfg=1
hi! link Error     ErrorMsg

"}}}
" HTML {{{
hi htmlTagName              ctermfg=2
hi htmlTag                  ctermfg=2
hi htmlArg                  ctermfg=2
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName       ctermfg=4
hi xmlTag           ctermfg=4
hi! link xmlString  xmlTagName
hi! link xmlAttrib  xmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" PHP {{{
hi phpSpecialFunction    ctermfg=5
hi phpIdentifier         ctermfg=3
hi phpParent             ctermfg=15
hi! link phpVarSelector  phpIdentifier
hi! link phpHereDoc      String
hi! link phpDefine       Statement

"}}}
" Markdown {{{
hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=bold
hi markdownBold                     cterm=bold
hi markdownItalic                   cterm=underline

"}}}
" Ruby {{{
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=2
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=1
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

"}}}
" LESS {{{
hi lessVariable             ctermfg=3
hi! link lessVariableValue  Normal

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" CtrlP {{{
hi! link CtrlPMatch    String
hi! link CtrlPLinePre  Comment

"}}}
" Mustache {{{
hi mustacheSection           ctermfg=4  cterm=bold
hi mustacheMarker            ctermfg=4
hi mustacheVariable          ctermfg=4
hi mustacheVariableUnescape  ctermfg=1
hi mustachePartial           ctermfg=5

"}}}
" Shell {{{
hi shDerefSimple     ctermfg=3
hi! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
hi SyntasticWarningSign       ctermfg=3  ctermbg=NONE
hi SyntasticErrorSign         ctermfg=1  ctermbg=NONE
hi SyntasticStyleWarningSign  ctermfg=2  ctermbg=NONE
hi SyntasticStyleErrorSign    ctermfg=4  ctermbg=NONE

"}}}
" Netrw {{{
hi netrwExe       ctermfg=1
hi netrwClassify  ctermfg=15  cterm=bold

"}}}
" Ledger {{{
hi ledgerAccount  ctermfg=3
hi! link ledgerMetadata  Comment
hi! link ledgerTransactionStatus  Statement

"}}}
" Diff {{{
hi diffAdded  ctermfg=2
hi diffRemoved  ctermfg=1
hi! link diffFile  PreProc
hi! link diffLine  Title

"}}}
" Plug {{{
hi plugSha  ctermfg=3

"}}}
" Blade {{{
hi! link bladeStructure  PreProc
hi! link bladeParen      phpParent
hi! link bladeEchoDelim  PreProc

"}}}

" vim: fdm=marker:sw=2:sts=2:et