local lush = require "lush"
local hsl = lush.hsl

local theme = lush(function()
  return {
    SpecialKey { fg = "cyan" }, -- SpecialKey     xxx ctermfg=81 guifg=Cyan
    packerWorking { SpecialKey }, -- packerWorking  xxx links to SpecialKey

    EndOfBuffer { fg = "#262b40" }, -- EndOfBuffer    xxx guifg=#262B40
    DiffviewEndOfBuffer { EndOfBuffer }, -- DiffviewEndOfBuffer xxx links to EndOfBuffer

    TermCursor { gui = "reverse" }, -- TermCursor     xxx cterm=reverse gui=reverse

    NonText { fg = "#545b7d" }, -- NonText        xxx ctermfg=12 guifg=#545B7D
    TelescopePreviewHyphen { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopeResultsDiffUntracked { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    DiffviewNonText { NonText }, -- DiffviewNonText xxx links to NonText

    Directory { fg = "#78a0f7" }, -- Directory      xxx ctermfg=159 guifg=#78A0F7
    TroubleFile { Directory }, -- TroubleFile    xxx links to Directory
    TelescopePreviewDirectory { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    TelescopePreviewDate { Directory }, -- TelescopePreviewDate xxx links to Directory
    DiffviewFolderName { Directory }, -- DiffviewFolderName xxx links to Directory

    ErrorMsg { fg = "#dc4c4c" }, -- ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=#DC4C4C
    NvimInvalidSpacing { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    LirGitStatusUnmerged { ErrorMsg }, -- LirGitStatusUnmerged xxx links to ErrorMsg
    packerFail { ErrorMsg }, -- packerFail     xxx links to ErrorMsg
    packerStatusFail { ErrorMsg }, -- packerStatusFail xxx links to ErrorMsg

    IncSearch { fg = "#1d202f", bg = "#ff9e66" }, -- IncSearch      xxx cterm=reverse guifg=#1D202F guibg=#FF9E66
    BqfPreviewRange { IncSearch }, -- BqfPreviewRange xxx links to IncSearch

    Search { fg = "#c1cbf5", bg = "#3e5aa3" }, -- Search         xxx ctermfg=0 ctermbg=11 guifg=#C1CBF5 guibg=#3E5AA3
    TroublePreview { Search }, -- TroublePreview xxx links to Search
    TSDefinition { Search }, -- TSDefinition   xxx links to Search
    TelescopePreviewMatch { Search }, -- TelescopePreviewMatch xxx links to Search

    MoreMsg { gui = "bold", fg = "seagreen" }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=SeaGreen
    ModeMsg { gui = "bold", fg = "#a9b1d6" }, -- ModeMsg        xxx cterm=bold gui=bold guifg=#A9B1D6

    LineNr { fg = "#3c4362" }, -- LineNr         xxx ctermfg=11 guifg=#3C4362
    LineNrAbove { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow { LineNr }, -- LineNrBelow    xxx links to LineNr
    TroubleIndent { LineNr }, -- TroubleIndent  xxx links to LineNr
    TroubleLocation { LineNr }, -- TroubleLocation xxx links to LineNr
    TelescopeResultsLineNr { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr

    CursorLineNr { fg = "#7279a1" }, -- CursorLineNr   xxx cterm=underline ctermfg=11 guifg=#7279A1
    TroubleFoldIcon { CursorLineNr }, -- TroubleFoldIcon xxx links to CursorLineNr
    MarkSignNumHL { CursorLineNr }, -- MarkSignNumHL  xxx links to CursorLineNr

    Question { fg = "#78a0f7" }, -- Question       xxx ctermfg=121 guifg=#78A0F7
    packerSuccess { Question }, -- packerSuccess  xxx links to Question

    StatusLine { fg = "#c1cbf5", bg = "#222639" }, -- StatusLine     xxx cterm=bold,reverse guifg=#C1CBF5 guibg=#222639
    MsgSeparator { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    ElCommandCV { StatusLine }, -- ElCommandCV    xxx links to StatusLine
    ElCommandEx { StatusLine }, -- ElCommandEx    xxx links to StatusLine
    ElConfirm { StatusLine }, -- ElConfirm      xxx links to StatusLine
    ElInsertCompletion { StatusLine }, -- ElInsertCompletion xxx links to StatusLine
    ElMore { StatusLine }, -- ElMore         xxx links to StatusLine
    ElNormalOperatorPending { StatusLine }, -- ElNormalOperatorPending xxx links to StatusLine
    ElPrompt { StatusLine }, -- ElPrompt       xxx links to StatusLine
    ElReplace { StatusLine }, -- ElReplace      xxx links to StatusLine
    ElSBlock { StatusLine }, -- ElSBlock       xxx links to StatusLine
    ElSelect { StatusLine }, -- ElSelect       xxx links to StatusLine
    ElShell { StatusLine }, -- ElShell        xxx links to StatusLine
    ElSLine { StatusLine }, -- ElSLine        xxx links to StatusLine
    ElTerm { StatusLine }, -- ElTerm         xxx links to StatusLine
    ElVirtualReplace { StatusLine }, -- ElVirtualReplace xxx links to StatusLine
    ElVisualBlock { StatusLine }, -- ElVisualBlock  xxx links to StatusLine
    ElVisualLine { StatusLine }, -- ElVisualLine   xxx links to StatusLine
    ElVisual { StatusLine }, -- ElVisual       xxx links to StatusLine
    DiffviewStatusLine { StatusLine }, -- DiffviewStatusLine xxx links to StatusLine

    StatusLineNC { gui = "underline", fg = "#24283b", bg = "#24283b", sp = "#1d202f" }, -- StatusLineNC   xxx cterm=reverse gui=underline guifg=#24283b guibg=#24283b guisp=#1d202f
    DiffviewStatusLineNC { StatusLineNC }, -- DiffviewStatusLineNC xxx links to StatusLineNC
    VertSplit { fg = "#1d202f" }, -- VertSplit      xxx cterm=reverse guifg=#1d202f
    DiffviewVertSplit { VertSplit }, -- DiffviewVertSplit xxx links to VertSplit

    Title { gui = "bold", fg = "#7aa2f7" }, -- Title          xxx ctermfg=225 gui=bold guifg=#7aa2f7
    TSTitle { Title }, -- TSTitle        xxx links to Title

    Visual { bg = "#364a82" }, -- Visual         xxx ctermbg=242 guibg=#364a82
    TSDefinitionUsage { Visual }, -- TSDefinitionUsage xxx links to Visual
    TSPlaygroundFocus { Visual }, -- TSPlaygroundFocus xxx links to Visual
    TelescopeSelection { Visual }, -- TelescopeSelection xxx links to Visual
    TelescopePreviewLine { Visual }, -- TelescopePreviewLine xxx links to Visual

    WarningMsg { fg = "#e0af68" }, -- WarningMsg     xxx ctermfg=224 guifg=#e0af68
    LirGitStatusWorktree { WarningMsg }, -- LirGitStatusWorktree xxx links to WarningMsg
    packerBreakingChange { WarningMsg }, -- packerBreakingChange xxx links to WarningMsg

    WildMenu { bg = "#364a82" }, -- WildMenu       xxx ctermfg=0 ctermbg=11 guibg=#364a82

    Folded { fg = "#7aa2f7", bg = "#3b4261" }, -- Folded         xxx ctermfg=14 ctermbg=242 guifg=#7aa2f7 guibg=#3b4261
    FoldColumn { fg = "#565f89", bg = "#24283b" }, -- FoldColumn     xxx ctermfg=14 ctermbg=242 guifg=#565f89 guibg=#24283b

    DiffAdd { bg = "#283b4d" }, -- DiffAdd        xxx ctermbg=4 guibg=#283b4d
    TelescopeResultsDiffAdd { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    DiffChange { bg = "#272d43" }, -- DiffChange     xxx ctermbg=5 guibg=#272d43
    TelescopeResultsDiffChange { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    DiffDelete { bg = "#3f2d3d" }, -- DiffDelete     xxx ctermfg=12 ctermbg=6 guibg=#3f2d3d
    TelescopeResultsDiffDelete { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    DiffText { bg = "#394b70" }, -- DiffText       xxx cterm=bold ctermbg=9 guibg=#394b70

    SignColumn { fg = "#3b4261", bg = "#24283b" }, -- SignColumn     xxx ctermfg=14 ctermbg=242 guifg=#3b4261 guibg=#24283b
    Conceal { fg = "#737aa2" }, -- Conceal        xxx ctermfg=7 ctermbg=242 guifg=#737aa2

    SpellBad { gui = "undercurl", sp = "#db4b4b" }, -- SpellBad       xxx ctermbg=9 gui=undercurl guisp=#db4b4b
    SpellCap { gui = "undercurl", sp = "#e0af68" }, -- SpellCap       xxx ctermbg=12 gui=undercurl guisp=#e0af68
    SpellRare { gui = "undercurl", sp = "#1abc9c" }, -- SpellRare      xxx ctermbg=13 gui=undercurl guisp=#1abc9c
    SpellLocal { gui = "undercurl", sp = "#0db9d7" }, -- SpellLocal     xxx ctermbg=14 gui=undercurl guisp=#0db9d7

    Pmenu { fg = "#c0caf5", bg = "#1f2335" }, -- Pmenu          xxx ctermfg=0 ctermbg=13 guifg=#c0caf5 guibg=#1f2335
    PmenuSel { bg = "#363d59" }, -- PmenuSel       xxx ctermfg=242 ctermbg=0 guibg=#363d59
    PmenuSbar { bg = "#2a2e3f" }, -- PmenuSbar      xxx ctermbg=248 guibg=#2a2e3f
    PmenuThumb { bg = "#3b4261" }, -- PmenuThumb     xxx ctermbg=15 guibg=#3b4261

    TabLine { fg = "#3b4261", bg = "#1f2335" }, -- TabLine        xxx cterm=underline ctermfg=15 ctermbg=242 guifg=#3b4261 guibg=#1f2335
    TabLineSel { fg = "#1d202f", bg = "#7aa2f7" }, -- TabLineSel     xxx cterm=bold guifg=#1d202f guibg=#7aa2f7
    TroubleCount { TabLineSel }, -- TroubleCount   xxx links to TabLineSel
    TabLineFill { bg = "#1d202f" }, -- TabLineFill    xxx cterm=reverse guibg=#1d202f

    CursorColumn { bg = "#292e42" }, -- CursorColumn   xxx ctermbg=242 guibg=#292e42
    CursorLine {}, -- CursorLine     xxx cterm=underline
    TSCurrentScope { CursorLine }, -- TSCurrentScope xxx links to CursorLine
    DiffviewCursorLine { CursorLine }, -- DiffviewCursorLine xxx links to CursorLine

    ColorColumn { bg = "#1d202f" }, -- ColorColumn    xxx ctermbg=1 guibg=#1d202f
    QuickFixLine { gui = "bold", bg = "#364a82" }, -- QuickFixLine   xxx gui=bold guibg=#364a82

    Whitespace { fg = "#3b4261" }, -- Whitespace     xxx guifg=#3b4261

    NormalNC { fg = "#c0caf5", bg = "#24283b" }, -- NormalNC       xxx guifg=#c0caf5 guibg=#24283b
    NormalFloat { fg = "#c0caf5", bg = "#1f2335" }, -- NormalFloat    xxx guifg=#c0caf5 guibg=#1f2335
    MsgArea { fg = "#a9b1d6" }, -- MsgArea        xxx guifg=#a9b1d6

    FloatBorder { fg = "#3d59a1", bg = "#1f2335" }, -- FloatBorder    xxx guifg=#3d59a1 guibg=#1f2335

    RedrawDebugNormal { gui = "reverse" }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear { bg = "yellow" }, -- RedrawDebugClear xxx ctermbg=11 guibg=yellow
    RedrawDebugComposed { bg = "green" }, -- RedrawDebugComposed xxx ctermbg=10 guibg=green
    RedrawDebugRecompose { bg = "red" }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=red

    Cursor { fg = "bg", bg = "fg" }, -- Cursor         xxx guifg=bg guibg=fg
    BqfPreviewCursor { Cursor }, -- BqfPreviewCursor xxx links to Cursor
    LightspeedCursor { Cursor }, -- LightspeedCursor xxx links to Cursor
    lCursor { fg = "#24283b", bg = "#c0caf5" }, -- lCursor        xxx guifg=#24283b guibg=#c0caf5

    Normal { fg = "#c1cbf5", bg = "#262b40" }, -- Normal         xxx guifg=#C1CBF5 guibg=#262B40
    NvimSpacing { Normal }, -- NvimSpacing    xxx links to Normal
    BqfPreviewFloat { Normal }, -- BqfPreviewFloat xxx links to Normal
    BqfPreviewBorder { Normal }, -- BqfPreviewBorder xxx links to Normal
    TroubleText { Normal }, -- TroubleText    xxx links to Normal
    TroubleNormal { Normal }, -- TroubleNormal  xxx links to Normal
    NotifyERRORBody { Normal }, -- NotifyERRORBody xxx links to Normal
    NotifyWARNBody { Normal }, -- NotifyWARNBody xxx links to Normal
    NotifyINFOBody { Normal }, -- NotifyINFOBody xxx links to Normal
    NotifyDEBUGBody { Normal }, -- NotifyDEBUGBody xxx links to Normal
    NotifyTRACEBody { Normal }, -- NotifyTRACEBody xxx links to Normal
    LirFloatNormal { Normal }, -- LirFloatNormal xxx links to Normal
    LirFloatCurdirWindowNormal { Normal }, -- LirFloatCurdirWindowNormal xxx links to Normal
    TelescopeNormal { Normal }, -- TelescopeNormal xxx links to Normal
    DiffviewSignColumn { Normal }, -- DiffviewSignColumn xxx links to Normal
    DiffviewNormal { Normal }, -- DiffviewNormal xxx links to Normal

    Substitute { fg = "#1d202f", bg = "#f7768e" }, -- Substitute     xxx guifg=#1d202f guibg=#f7768e

    FloatShadow { blend = "80", bg = "black" }, -- FloatShadow    xxx guibg=black blend=80
    FloatShadowThrough { blend = "100", bg = "black" }, -- FloatShadowThrough xxx guibg=black blend=100

    Error { fg = "#db4b4b" }, -- Error          xxx ctermfg=15 ctermbg=9 guifg=#db4b4b
    NvimInvalid { Error }, -- NvimInvalid    xxx links to Error
    TSQueryLinterError { Error }, -- TSQueryLinterError xxx links to Error
    jsonStringSQError { Error }, -- jsonStringSQError xxx links to Error
    jsonNoQuotesError { Error }, -- jsonNoQuotesError xxx links to Error
    jsonTripleQuotesError { Error }, -- jsonTripleQuotesError xxx links to Error
    jsonNumError { Error }, -- jsonNumError   xxx links to Error
    jsonCommentError { Error }, -- jsonCommentError xxx links to Error
    jsonSemicolonError { Error }, -- jsonSemicolonError xxx links to Error
    jsonTrailingCommaError { Error }, -- jsonTrailingCommaError xxx links to Error
    jsonMissingCommaError { Error }, -- jsonMissingCommaError xxx links to Error
    luaParenError { Error }, -- luaParenError  xxx links to Error
    luaBraceError { Error }, -- luaBraceError  xxx links to Error
    luaError { Error }, -- luaError       xxx links to Error

    Todo { fg = "#24283b", bg = "#e0af68" }, -- Todo           xxx ctermfg=0 ctermbg=11 guifg=#24283b guibg=#e0af68
    luaTodo { Todo }, -- luaTodo        xxx links to Todo

    String { fg = "#9ece6a" }, -- String         xxx guifg=#9ece6a
    NvimString { String }, -- NvimString     xxx links to String
    TSString { String }, -- TSString       xxx links to String
    TSLiteral { String }, -- TSLiteral      xxx links to String
    TSPlaygroundLang { String }, -- TSPlaygroundLang xxx links to String
    TelescopePreviewExecute { String }, -- TelescopePreviewExecute xxx links to String
    TelescopePreviewSize { String }, -- TelescopePreviewSize xxx links to String
    jsonString { String }, -- jsonString     xxx links to String
    luaString2 { String }, -- luaString2     xxx links to String
    luaString { String }, -- luaString      xxx links to String
    packerString { String }, -- packerString   xxx links to String

    Constant { fg = "#ff9e64" }, -- Constant       xxx ctermfg=13 guifg=#ff9e64
    Number { Constant }, -- Number         xxx links to Constant
    Boolean { Constant }, -- Boolean        xxx links to Constant
    ElCommand { Constant }, -- ElCommand      xxx links to Constant
    TSConstant { Constant }, -- TSConstant     xxx links to Constant
    TelescopePreviewPipe { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopePreviewCharDev { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    TelescopePreviewBlock { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewRead { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewUser { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewGroup { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopeResultsConstant { Constant }, -- TelescopeResultsConstant xxx links to Constant
    luaConstant { Constant }, -- luaConstant    xxx links to Constant
    packerStatusSuccess { Constant }, -- packerStatusSuccess xxx links to Constant
    packerStatusCommit { Constant }, -- packerStatusCommit xxx links to Constant

    Character { fg = "#9ece6a" }, -- Character      xxx guifg=#9ece6a
    TSCharacter { Character }, -- TSCharacter    xxx links to Character

    Function { fg = "#7aa2f7" }, -- Function       xxx guifg=#7aa2f7
    ElNormal { Function }, -- ElNormal       xxx links to Function
    TSFunction { Function }, -- TSFunction     xxx links to Function
    TSMethod { Function }, -- TSMethod       xxx links to Function
    TelescopeResultsClass { Function }, -- TelescopeResultsClass xxx links to Function
    TelescopeResultsField { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsFunction { Function }, -- TelescopeResultsFunction xxx links to Function
    jsonNull { Function }, -- jsonNull       xxx links to Function
    luaFunction { Function }, -- luaFunction    xxx links to Function

    Identifier { fg = "#bb9af7" }, -- Identifier     xxx cterm=bold ctermfg=14 guifg=#bb9af7
    NvimIdentifier { Identifier }, -- NvimIdentifier xxx links to Identifier
    MarkSignHL { Identifier }, -- MarkSignHL     xxx links to Identifier
    TSSymbol { Identifier }, -- TSSymbol       xxx links to Identifier
    TelescopePromptPrefix { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeResultsIdentifier { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    luaFunc { Identifier }, -- luaFunc        xxx links to Identifier
    packerHash { Identifier }, -- packerHash     xxx links to Identifier
    Statement { fg = "#bb9af7" }, -- Statement      xxx ctermfg=11 guifg=#bb9af7
    Conditional { Statement }, -- Conditional    xxx links to Statement
    Repeat { Statement }, -- Repeat         xxx links to Statement
    Label { Statement }, -- Label          xxx links to Statement
    Exception { Statement }, -- Exception      xxx links to Statement
    TelescopePreviewSocket { Statement }, -- TelescopePreviewSocket xxx links to Statement
    TelescopePreviewWrite { Statement }, -- TelescopePreviewWrite xxx links to Statement
    luaStatement { Statement }, -- luaStatement   xxx links to Statement

    Operator { fg = "#89ddff" }, -- Operator       xxx guifg=#89ddff
    NvimAssignment { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator { Operator }, -- NvimOperator   xxx links to Operator
    TelescopeResultsOperator { Operator }, -- TelescopeResultsOperator xxx links to Operator
    jsonPadding { Operator }, -- jsonPadding    xxx links to Operator
    luaIn { Operator }, -- luaIn          xxx links to Operator
    luaOperator { Operator }, -- luaOperator    xxx links to Operator
    Keyword { gui = "italic", fg = "#7dcfff" }, -- Keyword        xxx gui=italic guifg=#7dcfff
    TelescopePreviewSticky { Keyword }, -- TelescopePreviewSticky xxx links to Keyword
    PreProc { fg = "#7dcfff" }, -- PreProc        xxx ctermfg=81 guifg=#7dcfff
    Include { PreProc }, -- Include        xxx links to PreProc
    Define { PreProc }, -- Define         xxx links to PreProc
    Macro { PreProc }, -- Macro          xxx links to PreProc
    PreCondit { PreProc }, -- PreCondit      xxx links to PreProc
    LirDir { PreProc }, -- LirDir         xxx links to PreProc
    LirSymLink { PreProc }, -- LirSymLink     xxx links to PreProc
    LirFloatCurdirWindowDirName { PreProc }, -- LirFloatCurdirWindowDirName xxx links to PreProc
    TSAnnotation { PreProc }, -- TSAnnotation   xxx links to PreProc
    TSAttribute { PreProc }, -- TSAttribute    xxx links to PreProc
    DiffviewFolderSign { PreProc }, -- DiffviewFolderSign xxx links to PreProc

    Type { fg = "#2ac3de" }, -- Type           xxx ctermfg=121 guifg=#2ac3de
    StorageClass { Type }, -- StorageClass   xxx links to Type
    Structure { Type }, -- Structure      xxx links to Type
    Typedef { Type }, -- Typedef        xxx links to Type
    NvimNumberPrefix { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil { Type }, -- NvimOptionSigil xxx links to Type
    TSType { Type }, -- TSType         xxx links to Type
    TSTypeBuiltin { Type }, -- TSTypeBuiltin  xxx links to Type
    TSEnvironmentName { Type }, -- TSEnvironmentName xxx links to Type
    TelescopeMultiSelection { Type }, -- TelescopeMultiSelection xxx links to Type
    packerStatus { Type }, -- packerStatus   xxx links to Type
    packerOutput { Type }, -- packerOutput   xxx links to Type
    Special { fg = "#2ac3de" }, -- Special        xxx ctermfg=224 guifg=#2ac3de
    Tag { Special }, -- Tag            xxx links to Special
    SpecialChar { Special }, -- SpecialChar    xxx links to Special
    Delimiter { Special }, -- Delimiter      xxx links to Special
    SpecialComment { Special }, -- SpecialComment xxx links to Special
    Debug { Special }, -- Debug          xxx links to Special
    LirGitStatusIndex { Special }, -- LirGitStatusIndex xxx links to Special
    NotifyLogTitle { Special }, -- NotifyLogTitle xxx links to Special
    TSConstBuiltin { Special }, -- TSConstBuiltin xxx links to Special
    TSFuncBuiltin { Special }, -- TSFuncBuiltin  xxx links to Special
    TSMath { Special }, -- TSMath         xxx links to Special
    TelescopeMatching { Special }, -- TelescopeMatching xxx links to Special
    TelescopePreviewLink { Special }, -- TelescopePreviewLink xxx links to Special
    jsonEscape { Special }, -- jsonEscape     xxx links to Special

    DiagnosticError { fg = "#db4b4b" }, -- DiagnosticError xxx ctermfg=1 guifg=#db4b4b
    DiagnosticFloatingError { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    TroubleError { DiagnosticError }, -- TroubleError   xxx links to DiagnosticError

    DiagnosticWarn { fg = "#e0af68" }, -- DiagnosticWarn xxx ctermfg=3 guifg=#e0af68
    DiagnosticFloatingWarn { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    TroubleWarning { DiagnosticWarn }, -- TroubleWarning xxx links to DiagnosticWarn
    DiagnosticWarning { DiagnosticWarn }, -- DiagnosticWarning xxx links to DiagnosticWarn

    DiagnosticInfo { fg = "#0db9d7" }, -- DiagnosticInfo xxx ctermfg=4 guifg=#0db9d7
    DiagnosticFloatingInfo { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    TroubleInformation { DiagnosticInfo }, -- TroubleInformation xxx links to DiagnosticInfo
    DiagnosticInformation { DiagnosticInfo }, -- DiagnosticInformation xxx links to DiagnosticInfo

    DiagnosticHint { fg = "#1abc9c" }, -- DiagnosticHint xxx ctermfg=7 guifg=#1abc9c
    DiagnosticFloatingHint { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    TroubleHint { DiagnosticHint }, -- TroubleHint    xxx links to DiagnosticHint

    DiagnosticUnderlineError { gui = "undercurl", sp = "#db4b4b" }, -- DiagnosticUnderlineError xxx cterm=underline gui=undercurl guisp=#db4b4b
    DiagnosticUnderlineWarn { gui = "undercurl", sp = "#e0af68" }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=undercurl guisp=#e0af68
    DiagnosticUnderlineInfo { gui = "undercurl", sp = "#0db9d7" }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=undercurl guisp=#0db9d7
    DiagnosticUnderlineHint { gui = "undercurl", sp = "#1abc9c" }, -- DiagnosticUnderlineHint xxx cterm=underline gui=undercurl guisp=#1abc9c
    DiagnosticVirtualTextError { fg = "#db4b4b", bg = "#362c3d" }, -- DiagnosticVirtualTextError xxx guifg=#db4b4b guibg=#362c3d
    DiagnosticVirtualTextWarn { fg = "#e0af68", bg = "#373640" }, -- DiagnosticVirtualTextWarn xxx guifg=#e0af68 guibg=#373640
    DiagnosticVirtualTextInfo { fg = "#0db9d7", bg = "#22374b" }, -- DiagnosticVirtualTextInfo xxx guifg=#0db9d7 guibg=#22374b
    DiagnosticVirtualTextHint { fg = "#1abc9c", bg = "#233745" }, -- DiagnosticVirtualTextHint xxx guifg=#1abc9c guibg=#233745

    MatchParen { gui = "bold", fg = "#ff9e64" }, -- MatchParen     xxx ctermbg=6 gui=bold guifg=#ff9e64

    Comment { gui = "italic", fg = "#455496" }, -- Comment        xxx ctermfg=14 gui=italic guifg=#455496
    TroubleSource { Comment }, -- TroubleSource  xxx links to Comment
    TroubleCode { Comment }, -- TroubleCode    xxx links to Comment
    LirGitStatusBracket { Comment }, -- LirGitStatusBracket xxx links to Comment
    LirGitStatusUntracked { Comment }, -- LirGitStatusUntracked xxx links to Comment
    LirGitStatusIgnored { Comment }, -- LirGitStatusIgnored xxx links to Comment
    NotifyLogTime { Comment }, -- NotifyLogTime  xxx links to Comment
    MarkVirtTextHL { Comment }, -- MarkVirtTextHL xxx links to Comment
    TSComment { Comment }, -- TSComment      xxx links to Comment
    TelescopeResultsComment { Comment }, -- TelescopeResultsComment xxx links to Comment
    DiffviewDiffDelete { Comment }, -- DiffviewDiffDelete xxx links to Comment
    DiffviewFilePanelPath { Comment }, -- DiffviewFilePanelPath xxx links to Comment
    DiffviewStatusIgnored { Comment }, -- DiffviewStatusIgnored xxx links to Comment
    luaComment { Comment }, -- luaComment     xxx links to Comment
    packerRelDate { Comment }, -- packerRelDate  xxx links to Comment
    packerPackageNotLoaded { Comment }, -- packerPackageNotLoaded xxx links to Comment

    Underlined { gui = "underline" }, -- Underlined     xxx cterm=underline ctermfg=81 gui=underline
    TSURI { Underlined }, -- TSURI          xxx links to Underlined

    Ignore { fg = "bg" }, -- Ignore         xxx ctermfg=0 guifg=bg

    NvimInternalError { fg = "red", bg = "red" }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=red guibg=red
    NvimFigureBrace { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError

    DarkenedPanel { bg = "#1a1e2c" }, -- DarkenedPanel  xxx guibg=#1a1e2c
    DarkenedStatusline { bg = "#1a1e2c" }, -- DarkenedStatusline xxx guibg=#1a1e2c
    DarkenedStatuslineNC { bg = "#1a1e2c" }, -- DarkenedStatuslineNC xxx cterm=italic guibg=#1a1e2c

    DevIconNodeModules { fg = "#e8274b" }, -- DevIconNodeModules xxx guifg=#E8274B
    DevIconPl { fg = "#519aba" }, -- DevIconPl      xxx guifg=#519aba
    DevIconTerminal { fg = "#31b53e" }, -- DevIconTerminal xxx guifg=#31B53E
    DevIconPng { fg = "#a074c4" }, -- DevIconPng     xxx guifg=#a074c4
    DevIconCpp { fg = "#519aba" }, -- DevIconCpp     xxx guifg=#519aba
    DevIconPy { fg = "#3572a5" }, -- DevIconPy      xxx guifg=#3572A5
    DevIconVue { fg = "#8dc149" }, -- DevIconVue     xxx guifg=#8dc149
    DevIconPyc { fg = "#519aba" }, -- DevIconPyc     xxx guifg=#519aba
    DevIconPyd { fg = "#519aba" }, -- DevIconPyd     xxx guifg=#519aba
    DevIconPyo { fg = "#519aba" }, -- DevIconPyo     xxx guifg=#519aba
    DevIconYaml { fg = "#6d8086" }, -- DevIconYaml    xxx guifg=#6d8086
    DevIconDockerfile { fg = "#384d54" }, -- DevIconDockerfile xxx guifg=#384d54
    DevIconRakefile { fg = "#701516" }, -- DevIconRakefile xxx guifg=#701516
    DevIconRb { fg = "#701516" }, -- DevIconRb      xxx guifg=#701516
    DevIconRs { fg = "#dea584" }, -- DevIconRs      xxx guifg=#dea584
    DevIconDart { fg = "#03589c" }, -- DevIconDart    xxx guifg=#03589C
    DevIconSql { fg = "#dad8d8" }, -- DevIconSql     xxx guifg=#dad8d8
    DevIconConf { fg = "#6d8086" }, -- DevIconConf    xxx guifg=#6d8086
    DevIconTs { fg = "#519aba" }, -- DevIconTs      xxx guifg=#519aba
    DevIconC { fg = "#599eff" }, -- DevIconC       xxx guifg=#599eff
    DevIconGitAttributes { fg = "#41535b" }, -- DevIconGitAttributes xxx guifg=#41535b
    DevIconGitConfig { fg = "#41535b" }, -- DevIconGitConfig xxx guifg=#41535b
    DevIconGitIgnore { fg = "#41535b" }, -- DevIconGitIgnore xxx guifg=#41535b
    DevIconRss { fg = "#fb9d3b" }, -- DevIconRss     xxx guifg=#FB9D3B
    DevIconPhp { fg = "#a074c4" }, -- DevIconPhp     xxx guifg=#a074c4
    DevIconJava { fg = "#cc3e44" }, -- DevIconJava    xxx guifg=#cc3e44
    DevIconZshrc { fg = "#89e051" }, -- DevIconZshrc   xxx guifg=#89e051
    DevIconHtml { fg = "#e34c26" }, -- DevIconHtml    xxx guifg=#e34c26
    DevIconGemfile { fg = "#701516" }, -- DevIconGemfile xxx guifg=#701516
    DevIconWebp { fg = "#a074c4" }, -- DevIconWebp    xxx guifg=#a074c4
    DevIconLicense { fg = "#cbcb41" }, -- DevIconLicense xxx guifg=#cbcb41
    DevIconYml { fg = "#6d8086" }, -- DevIconYml     xxx guifg=#6d8086
    DevIconCss { fg = "#563d7c" }, -- DevIconCss     xxx guifg=#563d7c
    DevIconZsh { fg = "#89e051" }, -- DevIconZsh     xxx guifg=#89e051
    DevIconCPlusPlus { fg = "#f34b7d" }, -- DevIconCPlusPlus xxx guifg=#f34b7d
    DevIconR { fg = "#358a5b" }, -- DevIconR       xxx guifg=#358a5b
    DevIconDb { fg = "#dad8d8" }, -- DevIconDb      xxx guifg=#dad8d8
    DevIconHtm { fg = "#e34c26" }, -- DevIconHtm     xxx guifg=#e34c26
    DevIconIco { fg = "#cbcb41" }, -- DevIconIco     xxx guifg=#cbcb41
    DevIconSwift { fg = "#e37933" }, -- DevIconSwift   xxx guifg=#e37933
    DevIconJs { fg = "#cbcb41" }, -- DevIconJs      xxx guifg=#cbcb41
    DevIconJpg { fg = "#a074c4" }, -- DevIconJpg     xxx guifg=#a074c4
    DevIconTsx { fg = "#519aba" }, -- DevIconTsx     xxx guifg=#519aba
    DevIconJson { fg = "#cbcb41" }, -- DevIconJson    xxx guifg=#cbcb41
    DevIconVim { fg = "#019833" }, -- DevIconVim     xxx guifg=#019833
    DevIconGitLogo { fg = "#f14c28" }, -- DevIconGitLogo xxx guifg=#F14C28
    DevIconScala { fg = "#cc3e44" }, -- DevIconScala   xxx guifg=#cc3e44
    DevIconMdx { fg = "#519aba" }, -- DevIconMdx     xxx guifg=#519aba
    DevIconRake { fg = "#701516" }, -- DevIconRake    xxx guifg=#701516
    DevIconLua { fg = "#51a0cf" }, -- DevIconLua     xxx guifg=#51a0cf
    DevIconMakefile { fg = "#6d8086" }, -- DevIconMakefile xxx guifg=#6d8086
    DevIconVimrc { fg = "#019833" }, -- DevIconVimrc   xxx guifg=#019833
    DevIconGvimrc { fg = "#019833" }, -- DevIconGvimrc  xxx guifg=#019833
    DevIconNPMIgnore { fg = "#e8274b" }, -- DevIconNPMIgnore xxx guifg=#E8274B
    DevIconGo { fg = "#519aba" }, -- DevIconGo      xxx guifg=#519aba
    DevIconBash { fg = "#89e051" }, -- DevIconBash    xxx guifg=#89e051
    DevIconMd { fg = "#519aba" }, -- DevIconMd      xxx guifg=#519aba
    DevIconJsx { fg = "#519aba" }, -- DevIconJsx     xxx guifg=#519aba
    DevIconCp { fg = "#519aba" }, -- DevIconCp      xxx guifg=#519aba
    DevIconToml { fg = "#6d8086" }, -- DevIconToml    xxx guifg=#6d8086
    DevIconJpeg { fg = "#a074c4" }, -- DevIconJpeg    xxx guifg=#a074c4
    DevIconMarkdown { fg = "#519aba" }, -- DevIconMarkdown xxx guifg=#519aba
    DevIconSh { fg = "#4d5a5e" }, -- DevIconSh      xxx guifg=#4d5a5e
    DevIconDefault { fg = "#6d8086" }, -- DevIconDefault xxx guifg=#6d8086
    DevIconLirFolderNode { fg = "#7ebae4" }, -- DevIconLirFolderNode xxx guifg=#7ebae4
    DevIconFsx { fg = "#519aba" }, -- DevIconFsx     xxx guifg=#519aba
    DevIconGitModules { fg = "#41535b" }, -- DevIconGitModules xxx guifg=#41535b
    DevIconGitCommit { fg = "#41535b" }, -- DevIconGitCommit xxx guifg=#41535b
    DevIconGitlabCI { fg = "#e24329" }, -- DevIconGitlabCI xxx guifg=#e24329
    DevIconHbs { fg = "#f0772b" }, -- DevIconHbs     xxx guifg=#f0772b
    DevIconZshenv { fg = "#89e051" }, -- DevIconZshenv  xxx guifg=#89e051
    DevIconHpp { fg = "#a074c4" }, -- DevIconHpp     xxx guifg=#a074c4
    DevIconHrl { fg = "#b83998" }, -- DevIconHrl     xxx guifg=#B83998
    DevIconHs { fg = "#a074c4" }, -- DevIconHs      xxx guifg=#a074c4
    DevIconDump { fg = "#dad8d8" }, -- DevIconDump    xxx guifg=#dad8d8
    DevIconErb { fg = "#701516" }, -- DevIconErb     xxx guifg=#701516
    DevIconIni { fg = "#6d8086" }, -- DevIconIni     xxx guifg=#6d8086
    DevIconAwk { fg = "#4d5a5e" }, -- DevIconAwk     xxx guifg=#4d5a5e
    DevIconMl { fg = "#e37933" }, -- DevIconMl      xxx guifg=#e37933
    DevIconPm { fg = "#519aba" }, -- DevIconPm      xxx guifg=#519aba
    DevIconBmp { fg = "#a074c4" }, -- DevIconBmp     xxx guifg=#a074c4
    DevIconKsh { fg = "#4d5a5e" }, -- DevIconKsh     xxx guifg=#4d5a5e
    DevIconLeex { fg = "#a074c4" }, -- DevIconLeex    xxx guifg=#a074c4
    DevIconClojure { fg = "#8dc149" }, -- DevIconClojure xxx guifg=#8dc149
    DevIconLess { fg = "#563d7c" }, -- DevIconLess    xxx guifg=#563d7c
    DevIconClojureC { fg = "#8dc149" }, -- DevIconClojureC xxx guifg=#8dc149
    DevIconCsh { fg = "#4d5a5e" }, -- DevIconCsh     xxx guifg=#4d5a5e
    DevIconMixLock { fg = "#a074c4" }, -- DevIconMixLock xxx guifg=#a074c4
    DevIconMjs { fg = "#f1e05a" }, -- DevIconMjs     xxx guifg=#f1e05a
    DevIconCobol { fg = "#005ca5" }, -- DevIconCobol   xxx guifg=#005ca5
    DevIconMli { fg = "#e37933" }, -- DevIconMli     xxx guifg=#e37933
    DevIconMustache { fg = "#e37933" }, -- DevIconMustache xxx guifg=#e37933
    DevIconCoffee { fg = "#cbcb41" }, -- DevIconCoffee  xxx guifg=#cbcb41
    DevIconCrystal { fg = "#000000" }, -- DevIconCrystal xxx guifg=#000000
    DevIconPromptPs1 { fg = "#4d5a5e" }, -- DevIconPromptPs1 xxx guifg=#4d5a5e
    DevIconCson { fg = "#cbcb41" }, -- DevIconCson    xxx guifg=#cbcb41
    DevIconScss { fg = "#f55385" }, -- DevIconScss    xxx guifg=#f55385
    DevIconCxx { fg = "#519aba" }, -- DevIconCxx     xxx guifg=#519aba
    DevIconBrewfile { fg = "#701516" }, -- DevIconBrewfile xxx guifg=#701516
    DevIconRlib { fg = "#dea584" }, -- DevIconRlib    xxx guifg=#dea584
    DevIconRmd { fg = "#519aba" }, -- DevIconRmd     xxx guifg=#519aba
    DevIconRproj { fg = "#358a5b" }, -- DevIconRproj   xxx guifg=#358a5b
    DevIconEex { fg = "#a074c4" }, -- DevIconEex     xxx guifg=#a074c4
    DevIconSass { fg = "#f55385" }, -- DevIconSass    xxx guifg=#f55385
    DevIconEjs { fg = "#cbcb41" }, -- DevIconEjs     xxx guifg=#cbcb41
    DevIconEx { fg = "#a074c4" }, -- DevIconEx      xxx guifg=#a074c4
    DevIconSig { fg = "#e37933" }, -- DevIconSig     xxx guifg=#e37933
    DevIconSlim { fg = "#e34c26" }, -- DevIconSlim    xxx guifg=#e34c26
    DevIconExs { fg = "#a074c4" }, -- DevIconExs     xxx guifg=#a074c4
    DevIconSml { fg = "#e37933" }, -- DevIconSml     xxx guifg=#e37933
    DevIconFsharp { fg = "#519aba" }, -- DevIconFsharp  xxx guifg=#519aba
    DevIconCs { fg = "#596706" }, -- DevIconCs      xxx guifg=#596706
    DevIconFavicon { fg = "#cbcb41" }, -- DevIconFavicon xxx guifg=#cbcb41
    DevIconSuo { fg = "#854cc7" }, -- DevIconSuo     xxx guifg=#854CC7
    DevIconTxt { fg = "#89e051" }, -- DevIconTxt     xxx guifg=#89e051
    DevIconTwig { fg = "#8dc149" }, -- DevIconTwig    xxx guifg=#8dc149
    DevIconWebmanifest { fg = "#f1e05a" }, -- DevIconWebmanifest xxx guifg=#f1e05a
    DevIconXcPlayground { fg = "#e37933" }, -- DevIconXcPlayground xxx guifg=#e37933
    DevIconXul { fg = "#e37933" }, -- DevIconXul     xxx guifg=#e37933
    DevIconAi { fg = "#cbcb41" }, -- DevIconAi      xxx guifg=#cbcb41
    DevIconKotlin { fg = "#f88a02" }, -- DevIconKotlin  xxx guifg=#F88A02
    DevIconTextScene { fg = "#a074c4" }, -- DevIconTextScene xxx guifg=#a074c4
    DevIconGodotProject { fg = "#6d8086" }, -- DevIconGodotProject xxx guifg=#6d8086
    DevIconTextResource { fg = "#cbcb41" }, -- DevIconTextResource xxx guifg=#cbcb41
    DevIconElm { fg = "#519aba" }, -- DevIconElm     xxx guifg=#519aba
    DevIconFs { fg = "#519aba" }, -- DevIconFs      xxx guifg=#519aba
    DevIconGDScript { fg = "#6d8086" }, -- DevIconGDScript xxx guifg=#6d8086
    DevIconImportConfiguration { fg = "#ececec" }, -- DevIconImportConfiguration xxx guifg=#ECECEC
    DevIconNix { fg = "#7ebae4" }, -- DevIconNix     xxx guifg=#7ebae4
    DevIconMaterial { fg = "#b83998" }, -- DevIconMaterial xxx guifg=#B83998
    DevIconOpenTypeFont { fg = "#ececec" }, -- DevIconOpenTypeFont xxx guifg=#ECECEC
    DevIconPackedResource { fg = "#6d8086" }, -- DevIconPackedResource xxx guifg=#6d8086
    DevIconDesktopEntry { fg = "#563d7c" }, -- DevIconDesktopEntry xxx guifg=#563d7c
    DevIconTor { fg = "#519aba" }, -- DevIconTor     xxx guifg=#519aba
    DevIconOPUS { fg = "#f88a02" }, -- DevIconOPUS    xxx guifg=#F88A02
    DevIconJl { fg = "#a270ba" }, -- DevIconJl      xxx guifg=#a270ba
    DevIconHh { fg = "#a074c4" }, -- DevIconHh      xxx guifg=#a074c4
    DevIconProlog { fg = "#e4b854" }, -- DevIconProlog  xxx guifg=#e4b854
    DevIconFsi { fg = "#519aba" }, -- DevIconFsi     xxx guifg=#519aba
    DevIconVagrantfile { fg = "#1563ff" }, -- DevIconVagrantfile xxx guifg=#1563FF
    DevIconMint { fg = "#87c095" }, -- DevIconMint    xxx guifg=#87c095
    DevIconConfigRu { fg = "#701516" }, -- DevIconConfigRu xxx guifg=#701516
    DevIconErl { fg = "#b83998" }, -- DevIconErl     xxx guifg=#B83998
    DevIconHxx { fg = "#a074c4" }, -- DevIconHxx     xxx guifg=#a074c4
    DevIconPdf { fg = "#b30b00" }, -- DevIconPdf     xxx guifg=#b30b00
    DevIconPsd { fg = "#519aba" }, -- DevIconPsd     xxx guifg=#519aba
    DevIconPsb { fg = "#519aba" }, -- DevIconPsb     xxx guifg=#519aba
    DevIconBat { fg = "#c1f12e" }, -- DevIconBat     xxx guifg=#C1F12E
    DevIconD { fg = "#427819" }, -- DevIconD       xxx guifg=#427819
    DevIconCMakeLists { fg = "#6d8086" }, -- DevIconCMakeLists xxx guifg=#6d8086
    DevIconFish { fg = "#4d5a5e" }, -- DevIconFish    xxx guifg=#4d5a5e
    DevIconSvelte { fg = "#ff3e00" }, -- DevIconSvelte  xxx guifg=#ff3e00
    DevIconGruntfile { fg = "#e37933" }, -- DevIconGruntfile xxx guifg=#e37933
    DevIconGulpfile { fg = "#cc3e44" }, -- DevIconGulpfile xxx guifg=#cc3e44
    DevIconDropbox { fg = "#0061fe" }, -- DevIconDropbox xxx guifg=#0061FE
    DevIconTex { fg = "#3d6117" }, -- DevIconTex     xxx guifg=#3D6117
    DevIconHeex { fg = "#a074c4" }, -- DevIconHeex    xxx guifg=#a074c4
    DevIconDiff { fg = "#41535b" }, -- DevIconDiff    xxx guifg=#41535b
    DevIconXls { fg = "#207245" }, -- DevIconXls     xxx guifg=#207245
    DevIconConfiguration { fg = "#ececec" }, -- DevIconConfiguration xxx guifg=#ECECEC
    DevIconZig { fg = "#f69a1b" }, -- DevIconZig     xxx guifg=#f69a1b
    DevIconDoc { fg = "#185abd" }, -- DevIconDoc     xxx guifg=#185abd
    DevIconClojureJS { fg = "#519aba" }, -- DevIconClojureJS xxx guifg=#519aba
    DevIconGif { fg = "#a074c4" }, -- DevIconGif     xxx guifg=#a074c4
    DevIconPpt { fg = "#cb4a32" }, -- DevIconPpt     xxx guifg=#cb4a32
    DevIconCMake { fg = "#6d8086" }, -- DevIconCMake   xxx guifg=#6d8086
    DevIconXml { fg = "#e37933" }, -- DevIconXml     xxx guifg=#e37933
    DevIconHaml { fg = "#eaeae1" }, -- DevIconHaml    xxx guifg=#eaeae1
    DevIconWebpack { fg = "#519aba" }, -- DevIconWebpack xxx guifg=#519aba
    DevIconSettingsJson { fg = "#854cc7" }, -- DevIconSettingsJson xxx guifg=#854CC7
    DevIconSln { fg = "#854cc7" }, -- DevIconSln     xxx guifg=#854CC7
    DevIconH { fg = "#a074c4" }, -- DevIconH       xxx guifg=#a074c4
    DevIconEdn { fg = "#519aba" }, -- DevIconEdn     xxx guifg=#519aba
    DevIconPp { fg = "#302b6d" }, -- DevIconPp      xxx guifg=#302B6D
    DevIconProcfile { fg = "#a074c4" }, -- DevIconProcfile xxx guifg=#a074c4
    DevIconGemspec { fg = "#701516" }, -- DevIconGemspec xxx guifg=#701516
    DevIconSvg { fg = "#ffb13b" }, -- DevIconSvg     xxx guifg=#FFB13B
    DevIconBinaryGLTF { fg = "#ffb13b" }, -- DevIconBinaryGLTF xxx guifg=#FFB13B
    DevIconStyl { fg = "#8dc149" }, -- DevIconStyl    xxx guifg=#8dc149
    DevIconBashProfile { fg = "#89e051" }, -- DevIconBashProfile xxx guifg=#89e051
    DevIconZshprofile { fg = "#89e051" }, -- DevIconZshprofile xxx guifg=#89e051
    DevIconBashrc { fg = "#89e051" }, -- DevIconBashrc  xxx guifg=#89e051
    DevIconBabelrc { fg = "#cbcb41" }, -- DevIconBabelrc xxx guifg=#cbcb41
    DevIconLhs { fg = "#a074c4" }, -- DevIconLhs     xxx guifg=#a074c4
    DevIconFsscript { fg = "#519aba" }, -- DevIconFsscript xxx guifg=#519aba
    DevIconDsStore { fg = "#41535b" }, -- DevIconDsStore xxx guifg=#41535b

    NotifyERRORBorder { fg = "#8a1f1f" }, -- NotifyERRORBorder xxx guifg=#8a1f1f
    NotifyWARNBorder { fg = "#79491d" }, -- NotifyWARNBorder xxx guifg=#79491d
    NotifyINFOBorder { fg = "#4f6752" }, -- NotifyINFOBorder xxx guifg=#4f6752
    NotifyDEBUGBorder { fg = "#8b8b8b" }, -- NotifyDEBUGBorder xxx guifg=#8b8b8b
    NotifyTRACEBorder { fg = "#4f3552" }, -- NotifyTRACEBorder xxx guifg=#4f3552
    NotifyERRORIcon { fg = "#f70067" }, -- NotifyERRORIcon xxx guifg=#f70067
    NotifyWARNIcon { fg = "#f79000" }, -- NotifyWARNIcon xxx guifg=#f79000
    NotifyINFOIcon { fg = "#a9ff68" }, -- NotifyINFOIcon xxx guifg=#a9ff68
    NotifyDEBUGIcon { fg = "#8b8b8b" }, -- NotifyDEBUGIcon xxx guifg=#8b8b8b
    NotifyTRACEIcon { fg = "#d484ff" }, -- NotifyTRACEIcon xxx guifg=#d484ff
    NotifyERRORTitle { fg = "#f70067" }, -- NotifyERRORTitle xxx guifg=#f70067
    NotifyWARNTitle { fg = "#f79000" }, -- NotifyWARNTitle xxx guifg=#f79000
    NotifyINFOTitle { fg = "#a9ff68" }, -- NotifyINFOTitle xxx guifg=#a9ff68
    NotifyDEBUGTitle { fg = "#8b8b8b" }, -- NotifyDEBUGTitle xxx guifg=#8b8b8b
    NotifyTRACETitle { fg = "#d484ff" }, -- NotifyTRACETitle xxx guifg=#d484ff

    SurroundFeedback { gui = "reverse" }, -- SurroundFeedback xxx gui=reverse

    gitsignsadd { fg = "#266d6a", sp = "none" }, -- gitsignsadd    xxx guifg=#266d6a guisp=none
    gitsignschange { fg = "#536c9e", sp = "none" }, -- gitsignschange xxx guifg=#536c9e guisp=none
    gitsignsdelete { fg = "#b2555b", sp = "none" }, -- gitsignsdelete xxx guifg=#b2555b guisp=none

    IndentBlanklineChar { gui = "nocombine", fg = "#565f89" }, -- IndentBlanklineChar xxx gui=nocombine guifg=#565f89
    IndentBlanklineSpaceChar { gui = "nocombine", fg = "#565f89" }, -- IndentBlanklineSpaceChar xxx gui=nocombine guifg=#565f89
    IndentBlanklineSpaceCharBlankline { gui = "nocombine", fg = "blue" }, -- IndentBlanklineSpaceCharBlankline xxx gui=nocombine guifg=blue
    IndentBlanklineContextStart { gui = "underline", sp = "#ffff60" }, -- IndentBlanklineContextStart xxx gui=underline guisp=#ffff60
    IndentBlanklineContextChar { gui = "nocombine", fg = "#ffff60" }, -- IndentBlanklineContextChar xxx gui=nocombine guifg=#ffff60

    LightspeedLabel { gui = "bold,underline", fg = "#ff2f87" }, -- LightspeedLabel xxx gui=bold,underline guifg=#ff2f87
    LightspeedLabelOverlapped { gui = "underline", fg = "#e01067" }, -- LightspeedLabelOverlapped xxx gui=underline guifg=#e01067
    LightspeedLabelDistant { gui = "bold,underline", fg = "#99ddff" }, -- LightspeedLabelDistant xxx gui=bold,underline guifg=#99ddff
    LightspeedLabelDistantOverlapped { gui = "underline", fg = "#79bddf" }, -- LightspeedLabelDistantOverlapped xxx gui=underline guifg=#79bddf
    LightspeedShortcut { gui = "bold,underline", fg = "#ffffff", bg = "#f00077" }, -- LightspeedShortcut xxx gui=bold,underline guifg=#ffffff guibg=#f00077
    LightspeedShortcutOverlapped { LightspeedShortcut }, -- LightspeedShortcutOverlapped xxx links to LightspeedShortcut
    LightspeedOneCharMatch { gui = "bold", fg = "#ffffff", bg = "#f00077" }, -- LightspeedOneCharMatch xxx gui=bold guifg=#ffffff guibg=#f00077
    LightspeedMaskedChar { fg = "#b38080" }, -- LightspeedMaskedChar xxx guifg=#b38080
    LightspeedUnlabeledMatch { gui = "bold", fg = "#f3ecec" }, -- LightspeedUnlabeledMatch xxx gui=bold guifg=#f3ecec
    LightspeedUniqueChar { LightspeedUnlabeledMatch }, -- LightspeedUniqueChar xxx links to LightspeedUnlabeledMatch
    LightspeedPendingOpArea { fg = "#ffffff", bg = "#f00077" }, -- LightspeedPendingOpArea xxx guifg=#ffffff guibg=#f00077
    LightspeedGreyWash { fg = "#545c7e" }, -- LightspeedGreyWash xxx guifg=#545c7e

    LirTransparentCursor { blend = "100", gui = "strikethrough" }, -- LirTransparentCursor xxx gui=strikethrough blend=100

    TSPunctDelimiter { fg = "#89ddff" }, -- TSPunctDelimiter xxx guifg=#89ddff
    commentTSPunctDelimiter { TSPunctDelimiter }, -- commentTSPunctDelimiter xxx links to TSPunctDelimiter
    nixTSPunctDelimiter { TSPunctDelimiter }, -- nixTSPunctDelimiter xxx links to TSPunctDelimiter
    luaTSPunctDelimiter { TSPunctDelimiter }, -- luaTSPunctDelimiter xxx links to TSPunctDelimiter
    TSPunctBracket { fg = "#a9b1d6" }, -- TSPunctBracket xxx guifg=#a9b1d6
    nixTSPunctBracket { TSPunctBracket }, -- nixTSPunctBracket xxx links to TSPunctBracket
    luaTSPunctBracket { TSPunctBracket }, -- luaTSPunctBracket xxx links to TSPunctBracket
    TSPunctSpecial { fg = "#89ddff" }, -- TSPunctSpecial xxx guifg=#89ddff
    nixTSPunctSpecial { TSPunctSpecial }, -- nixTSPunctSpecial xxx links to TSPunctSpecial
    TSStringRegex { fg = "#b4f9f8" }, -- TSStringRegex  xxx guifg=#b4f9f8
    TSStringEscape { fg = "#bb9af7" }, -- TSStringEscape xxx guifg=#bb9af7
    TSParameter { fg = "#e0af68" }, -- TSParameter    xxx guifg=#e0af68
    TSParameterReference { TSParameter }, -- TSParameterReference xxx links to TSParameter
    luaTSParameter { TSParameter }, -- luaTSParameter xxx links to TSParameter
    TSField { fg = "#73daca" }, -- TSField        xxx guifg=#73daca
    nixTSField { TSField }, -- nixTSField     xxx links to TSField
    luaTSField { TSField }, -- luaTSField     xxx links to TSField
    TSProperty { fg = "#73daca" }, -- TSProperty     xxx guifg=#73daca
    TSTagAttribute { TSProperty }, -- TSTagAttribute xxx links to TSProperty
    luaTSProperty { TSProperty }, -- luaTSProperty  xxx links to TSProperty
    TSConstructor { fg = "#bb9af7" }, -- TSConstructor  xxx guifg=#bb9af7
    luaTSConstructor { TSConstructor }, -- luaTSConstructor xxx links to TSConstructor
    TSLabel { fg = "#7aa2f7" }, -- TSLabel        xxx guifg=#7aa2f7
    TSOperator { fg = "#89ddff" }, -- TSOperator     xxx guifg=#89ddff
    TSKeywordOperator { TSOperator }, -- TSKeywordOperator xxx links to TSOperator
    luaTSOperator { TSOperator }, -- luaTSOperator  xxx links to TSOperator
    TSKeyword { gui = "italic", fg = "#9d7cd8" }, -- TSKeyword      xxx gui=italic guifg=#9d7cd8
    TSKeywordReturn { TSKeyword }, -- TSKeywordReturn xxx links to TSKeyword
    nixTSKeyword { TSKeyword }, -- nixTSKeyword   xxx links to TSKeyword
    luaTSKeyword { TSKeyword }, -- luaTSKeyword   xxx links to TSKeyword
    TSKeywordFunction { fg = "#bb9af7" }, -- TSKeywordFunction xxx guifg=#bb9af7
    luaTSKeywordFunction { TSKeywordFunction }, -- luaTSKeywordFunction xxx links to TSKeywordFunction
    TSVariableBuiltin { fg = "#f7768e" }, -- TSVariableBuiltin xxx guifg=#f7768e
    TSStrong { gui = "bold" }, -- TSStrong       xxx gui=bold
    TSEmphasis { gui = "italic" }, -- TSEmphasis     xxx gui=italic
    TSUnderline { gui = "underline" }, -- TSUnderline    xxx gui=underline
    TSStrike { gui = "strikethrough" }, -- TSStrike       xxx gui=strikethrough
    TSTextReference { fg = "#1abc9c" }, -- TSTextReference xxx guifg=#1abc9c
    TSNote { fg = "#24283b", bg = "#0db9d7" }, -- TSNote         xxx guifg=#24283b guibg=#0db9d7
    commentTSNote { TSNote }, -- commentTSNote  xxx links to TSNote
    TSWarning { fg = "#24283b", bg = "#e0af68" }, -- TSWarning      xxx guifg=#24283b guibg=#e0af68
    commentTSWarning { TSWarning }, -- commentTSWarning xxx links to TSWarning
    TSDanger { fg = "#24283b", bg = "#db4b4b" }, -- TSDanger       xxx guifg=#24283b guibg=#db4b4b

    TelescopeBorder { fg = "#3d59a1" }, -- TelescopeBorder xxx guifg=#3d59a1
    TelescopePromptBorder { TelescopeBorder }, -- TelescopePromptBorder xxx links to TelescopeBorder
    TelescopeResultsBorder { TelescopeBorder }, -- TelescopeResultsBorder xxx links to TelescopeBorder
    TelescopePreviewBorder { TelescopeBorder }, -- TelescopePreviewBorder xxx links to TelescopeBorder
    TelescopeTitle { TelescopeBorder }, -- TelescopeTitle xxx links to TelescopeBorder

    WhichKey { fg = "#7dcfff" }, -- WhichKey       xxx guifg=#7dcfff
    WhichKeyDesc { fg = "#bb9af7" }, -- WhichKeyDesc   xxx guifg=#bb9af7
    WhichKeyGroup { fg = "#7aa2f7" }, -- WhichKeyGroup  xxx guifg=#7aa2f7
    WhichKeyFloat { bg = "#1f2335" }, -- WhichKeyFloat  xxx guibg=#1f2335
    WhichKeyValue { fg = "#737aa2" }, -- WhichKeyValue  xxx guifg=#737aa2
    WhichKeySeparator { fg = "#565f89" }, -- WhichKeySeparator xxx guifg=#565f89
    WhichKeySeperator { fg = "#565f89" }, -- WhichKeySeperator xxx guifg=#565f89

    -- FIX: Sample
    TodoBgFIX { gui = "bold", fg = "#000000", bg = "#ffffff" }, -- TodoBgFIX      xxx gui=bold guifg=#000000 guibg=#ffffff
    TodoFgFIX { fg = "#ffffff" }, -- TodoFgFIX      xxx guifg=#ffffff
    TodoSignFIX { fg = "#ffffff", bg = SignColumn.bg }, -- TodoSignFIX    xxx guifg=#ffffff guibg=#24283b
    -- WARN: Sample
    TodoBgWARN { gui = "bold", fg = "#ffffff", bg = "#ff0000" }, -- TodoBgWARN     xxx gui=bold guifg=#ffffff guibg=#ff0000
    TodoFgWARN { fg = "#ff0000" }, -- TodoFgWARN     xxx guifg=#ff0000
    TodoSignWARN { fg = "#ff0000", bg = SignColumn.bg }, -- TodoSignWARN   xxx guifg=#ff0000 guibg=#24283b
    TodoBgHACK { gui = "bold", fg = "#ffffff", bg = "#ff0000" }, -- TodoBgHACK     xxx gui=bold guifg=#ffffff guibg=#ff0000
    -- HACK: Sample
    TodoFgHACK { fg = "#ff0000" }, -- TodoFgHACK     xxx guifg=#ff0000
    TodoSignHACK { fg = "#ff0000", bg = SignColumn.bg }, -- TodoSignHACK   xxx guifg=#ff0000 guibg=#24283b
    -- PERF: Sample
    TodoBgPERF { gui = "bold", fg = "#000000", bg = "#40ffff" }, -- TodoBgPERF     xxx gui=bold guifg=#000000 guibg=#40ffff
    TodoFgPERF { fg = "#40ffff" }, -- TodoFgPERF     xxx guifg=#40ffff
    TodoSignPERF { fg = "#40ffff", bg = SignColumn.bg }, -- TodoSignPERF   xxx guifg=#40ffff guibg=#24283b
    -- NOTE: Sample
    TodoBgNOTE { gui = "bold", fg = "#000000", bg = "#10b981" }, -- TodoBgNOTE     xxx gui=bold guifg=#000000 guibg=#10b981
    TodoFgNOTE { fg = "#10b981" }, -- TodoFgNOTE     xxx guifg=#10b981
    TodoSignNOTE { fg = "#10b981", bg = SignColumn.bg }, -- TodoSignNOTE   xxx guifg=#10b981 guibg=#24283b
    -- TODO: Sample
    TodoBgTODO { gui = "bold", fg = "#ffffff", bg = "#2563eb" }, -- TodoBgTODO     xxx gui=bold guifg=#ffffff guibg=#2563eb
    TodoFgTODO { fg = "#2563eb" }, -- TodoFgTODO     xxx guifg=#2563eb
    TodoSignTODO { fg = "#2563eb", bg = SignColumn.bg }, -- TodoSignTODO   xxx guifg=#2563eb guibg=#24283b

    DiffviewDiffAddAsDelete { bg = "#3f2d3d" }, -- DiffviewDiffAddAsDelete xxx guibg=#3f2d3d
    DiffviewDim1 { fg = "14" }, -- DiffviewDim1   xxx guifg=14
    DiffviewPrimary { fg = "14" }, -- DiffviewPrimary xxx guifg=14
    DiffviewSecondary { fg = "13" }, -- DiffviewSecondary xxx guifg=13
    DiffviewFilePanelTitle { gui = "bold", fg = "159" }, -- DiffviewFilePanelTitle xxx gui=bold guifg=159
    DiffviewFilePanelRootPath { DiffviewFilePanelTitle }, -- DiffviewFilePanelRootPath xxx links to DiffviewFilePanelTitle
    DiffviewFilePanelCounter { gui = "bold", fg = "14" }, -- DiffviewFilePanelCounter xxx gui=bold guifg=14
    DiffviewFilePanelFileName { fg = "white" }, -- DiffviewFilePanelFileName xxx guifg=white
    diffAdded { fg = "#449dab" }, -- diffAdded      xxx guifg=#449dab
    DiffviewFilePanelInsertions { diffAdded }, -- DiffviewFilePanelInsertions xxx links to diffAdded
    DiffviewStatusAdded { diffAdded }, -- DiffviewStatusAdded xxx links to diffAdded
    DiffviewStatusUntracked { diffAdded }, -- DiffviewStatusUntracked xxx links to diffAdded
    diffRemoved { fg = "#914c54" }, -- diffRemoved    xxx guifg=#914c54
    DiffviewFilePanelDeletions { diffRemoved }, -- DiffviewFilePanelDeletions xxx links to diffRemoved
    DiffviewStatusUnknown { diffRemoved }, -- DiffviewStatusUnknown xxx links to diffRemoved
    DiffviewStatusDeleted { diffRemoved }, -- DiffviewStatusDeleted xxx links to diffRemoved
    DiffviewStatusBroken { diffRemoved }, -- DiffviewStatusBroken xxx links to diffRemoved
    diffChanged { fg = "#6183bb" }, -- diffChanged    xxx guifg=#6183bb
    DiffviewStatusModified { diffChanged }, -- DiffviewStatusModified xxx links to diffChanged
    DiffviewStatusRenamed { diffChanged }, -- DiffviewStatusRenamed xxx links to diffChanged
    DiffviewStatusCopied { diffChanged }, -- DiffviewStatusCopied xxx links to diffChanged
    DiffviewStatusTypeChange { diffChanged }, -- DiffviewStatusTypeChange xxx links to diffChanged
    DiffviewStatusUnmerged { diffChanged }, -- DiffviewStatusUnmerged xxx links to diffChanged

    WilderPoppupMenuAccent { gui = "bold,underline", fg = "#c0caf5", bg = "#1f2335" }, -- WilderPoppupMenuAccent xxx cterm=bold,underline ctermfg=0 ctermbg=13 gui=bold,underline guifg=#c0caf5 guibg=#1f2335
    WilderPopupMenuSelectedAccent { gui = "bold,underline", bg = "#363d59" }, -- WilderPopupMenuSelectedAccent xxx cterm=bold,underline ctermfg=242 ctermbg=0 gui=bold,underline guibg=#363d59
    mkdCodeStart { gui = "bold", fg = "#1abc9c" }, -- mkdCodeStart   xxx gui=bold guifg=#1abc9c

    mkdCodeEnd { gui = "bold", fg = "#1abc9c" }, -- mkdCodeEnd     xxx gui=bold guifg=#1abc9c
    markdownHeadingDelimiter { gui = "bold", fg = "#ff9e64" }, -- markdownHeadingDelimiter xxx gui=bold guifg=#ff9e64
    markdownCode { fg = "#1abc9c" }, -- markdownCode   xxx guifg=#1abc9c
    markdownH1 { gui = "bold", fg = "#bb9af7" }, -- markdownH1     xxx gui=bold guifg=#bb9af7
    markdownH2 { gui = "bold", fg = "#7aa2f7" }, -- markdownH2     xxx gui=bold guifg=#7aa2f7
    markdownLinkText { gui = "underline", fg = "#7aa2f7" }, -- markdownLinkText xxx gui=underline guifg=#7aa2f7
    debugPC { bg = "#1f2335" }, -- debugPC        xxx guibg=#1f2335

    LspFloatWinNormal { bg = "#1f2335" }, -- LspFloatWinNormal xxx guibg=#1f2335
    LspFloatWinBorder { fg = "#3d59a1" }, -- LspFloatWinBorder xxx guifg=#3d59a1

    LspSagaBorderTitle { fg = "#7dcfff" }, -- LspSagaBorderTitle xxx guifg=#7dcfff
    LspSagaHoverBorder { fg = "#7aa2f7" }, -- LspSagaHoverBorder xxx guifg=#7aa2f7
    LspSagaRenameBorder { fg = "#9ece6a" }, -- LspSagaRenameBorder xxx guifg=#9ece6a
    LspSagaCodeActionBorder { fg = "#7aa2f7" }, -- LspSagaCodeActionBorder xxx guifg=#7aa2f7
    LspSagaFinderSelection { fg = "#364a82" }, -- LspSagaFinderSelection xxx guifg=#364a82

    ReferencesCount { fg = "#9d7cd8" }, -- ReferencesCount xxx guifg=#9d7cd8
    DefinitionCount { fg = "#9d7cd8" }, -- DefinitionCount xxx guifg=#9d7cd8
    TargetWord { fg = "#7dcfff" }, -- TargetWord     xxx guifg=#7dcfff
    healthError { fg = "#db4b4b" }, -- healthError    xxx guifg=#db4b4b
    healthSuccess { fg = "#73daca" }, -- healthSuccess  xxx guifg=#73daca
    healthWarning { fg = "#e0af68" }, -- healthWarning  xxx guifg=#e0af68
    BufferLineIndicatorSelected { fg = "#6183bb" }, -- BufferLineIndicatorSelected xxx guifg=#6183bb
    BufferLineFill { bg = "#1d202f" }, -- BufferLineFill xxx guibg=#1d202f
    BufferCurrent { fg = "#c0caf5", bg = "#3b4261" }, -- BufferCurrent  xxx guifg=#c0caf5 guibg=#3b4261
    BufferCurrentIndex { fg = "#0db9d7", bg = "#3b4261" }, -- BufferCurrentIndex xxx guifg=#0db9d7 guibg=#3b4261
    BufferCurrentMod { fg = "#e0af68", bg = "#3b4261" }, -- BufferCurrentMod xxx guifg=#e0af68 guibg=#3b4261
    BufferCurrentSign { fg = "#0db9d7", bg = "#3b4261" }, -- BufferCurrentSign xxx guifg=#0db9d7 guibg=#3b4261
    BufferCurrentTarget { fg = "#f7768e", bg = "#3b4261" }, -- BufferCurrentTarget xxx guifg=#f7768e guibg=#3b4261
    BufferVisible { fg = "#c0caf5", bg = "#1f2335" }, -- BufferVisible  xxx guifg=#c0caf5 guibg=#1f2335
    BufferVisibleIndex { fg = "#0db9d7", bg = "#1f2335" }, -- BufferVisibleIndex xxx guifg=#0db9d7 guibg=#1f2335
    BufferVisibleMod { fg = "#e0af68", bg = "#1f2335" }, -- BufferVisibleMod xxx guifg=#e0af68 guibg=#1f2335
    BufferVisibleSign { fg = "#0db9d7", bg = "#1f2335" }, -- BufferVisibleSign xxx guifg=#0db9d7 guibg=#1f2335
    BufferVisibleTarget { fg = "#f7768e", bg = "#1f2335" }, -- BufferVisibleTarget xxx guifg=#f7768e guibg=#1f2335
    BufferInactive { fg = "#737aa2", bg = "#1f2335" }, -- BufferInactive xxx guifg=#737aa2 guibg=#1f2335
    BufferInactiveIndex { fg = "#737aa2", bg = "#1f2335" }, -- BufferInactiveIndex xxx guifg=#737aa2 guibg=#1f2335
    BufferInactiveMod { fg = "#a8875b", bg = "#1f2335" }, -- BufferInactiveMod xxx guifg=#a8875b guibg=#1f2335
    BufferInactiveSign { fg = "#3d59a1", bg = "#1f2335" }, -- BufferInactiveSign xxx guifg=#3d59a1 guibg=#1f2335
    BufferInactiveTarget { fg = "#f7768e", bg = "#1f2335" }, -- BufferInactiveTarget xxx guifg=#f7768e guibg=#1f2335

    SneakScope { bg = "#364a82" }, -- SneakScope     xxx guibg=#364a82

    HopNextKey { gui = "bold", fg = "#ff007c" }, -- HopNextKey     xxx gui=bold guifg=#ff007c
    HopNextKey1 { gui = "bold", fg = "#0db9d7" }, -- HopNextKey1    xxx gui=bold guifg=#0db9d7
    HopNextKey2 { fg = "#1d546a" }, -- HopNextKey2    xxx guifg=#1d546a
    HopUnmatched { fg = "#545c7e" }, -- HopUnmatched   xxx guifg=#545c7e

    CmpDocumentation { fg = "#c0caf5", bg = "#1f2335" }, -- CmpDocumentation xxx guifg=#c0caf5 guibg=#1f2335
    CmpItemAbbr { fg = "#c0caf5" }, -- CmpItemAbbr    xxx guifg=#c0caf5
    CmpItemAbbrDeprecated { gui = "strikethrough", fg = "#3b4261" }, -- CmpItemAbbrDeprecated xxx gui=strikethrough guifg=#3b4261
    CmpItemAbbrMatch { fg = "#2ac3de" }, -- CmpItemAbbrMatch xxx guifg=#2ac3de
    CmpItemAbbrMatchFuzzy { fg = "#2ac3de" }, -- CmpItemAbbrMatchFuzzy xxx guifg=#2ac3de
    CmpItemKindDefault { fg = "#a9b1d6" }, -- CmpItemKindDefault xxx guifg=#a9b1d6
    CmpItemMenu { fg = "#565f89" }, -- CmpItemMenu    xxx guifg=#565f89
    CmpItemKindFunction { fg = "#7aa2f7" }, -- CmpItemKindFunction xxx guifg=#7aa2f7
    CmpItemKindMethod { fg = "#7aa2f7" }, -- CmpItemKindMethod xxx guifg=#7aa2f7
    CmpItemKindClass { fg = "#ff9e64" }, -- CmpItemKindClass xxx guifg=#ff9e64
    CmpItemKindInterface { fg = "#ff9e64" }, -- CmpItemKindInterface xxx guifg=#ff9e64
    CmpItemKindProperty { fg = "#73daca" }, -- CmpItemKindProperty xxx guifg=#73daca
    CmpItemKindField { fg = "#73daca" }, -- CmpItemKindField xxx guifg=#73daca
    CmpItemKindSnippet { fg = "#737aa2" }, -- CmpItemKindSnippet xxx guifg=#737aa2
    CmpItemKindVariable { fg = "#bb9af7" }, -- CmpItemKindVariable xxx guifg=#bb9af7

    LspTroubleText { fg = "#a9b1d6" }, -- LspTroubleText xxx guifg=#a9b1d6
    LspTroubleNormal { fg = "#a9b1d6", bg = "#1f2335" }, -- LspTroubleNormal xxx guifg=#a9b1d6 guibg=#1f2335

    illuminatedWord { bg = "#3b4261" }, -- illuminatedWord xxx guibg=#3b4261
    illuminatedCurWord { bg = "#3b4261" }, -- illuminatedCurWord xxx guibg=#3b4261

    diffOldFile { fg = "#e0af68" }, -- diffOldFile    xxx guifg=#e0af68
    diffNewFile { fg = "#ff9e64" }, -- diffNewFile    xxx guifg=#ff9e64
    diffFile { fg = "#7aa2f7" }, -- diffFile       xxx guifg=#7aa2f7
    diffLine { fg = "#565f89" }, -- diffLine       xxx guifg=#565f89
    diffIndexLine { fg = "#bb9af7" }, -- diffIndexLine  xxx guifg=#bb9af7

    NeogitBranch { fg = "#bb9af7" }, -- NeogitBranch   xxx guifg=#bb9af7
    NeogitRemote { fg = "#9d7cd8" }, -- NeogitRemote   xxx guifg=#9d7cd8
    NeogitHunkHeader { fg = "#c0caf5", bg = "#292e42" }, -- NeogitHunkHeader xxx guifg=#c0caf5 guibg=#292e42
    NeogitHunkHeaderHighlight { fg = "#7aa2f7", bg = "#3b4261" }, -- NeogitHunkHeaderHighlight xxx guifg=#7aa2f7 guibg=#3b4261
    NeogitDiffContextHighlight { fg = "#a9b1d6", bg = "#30354e" }, -- NeogitDiffContextHighlight xxx guifg=#a9b1d6 guibg=#30354e
    NeogitDiffDeleteHighlight { fg = "#914c54", bg = "#3f2d3d" }, -- NeogitDiffDeleteHighlight xxx guifg=#914c54 guibg=#3f2d3d
    NeogitDiffAddHighlight { fg = "#449dab", bg = "#283b4d" }, -- NeogitDiffAddHighlight xxx guifg=#449dab guibg=#283b4d

    FernBranchText { fg = "#7aa2f7" }, -- FernBranchText xxx guifg=#7aa2f7

    GlyphPalette1 { fg = "#db4b4b" }, -- GlyphPalette1  xxx guifg=#db4b4b
    GlyphPalette2 { fg = "#9ece6a" }, -- GlyphPalette2  xxx guifg=#9ece6a
    GlyphPalette3 { fg = "#e0af68" }, -- GlyphPalette3  xxx guifg=#e0af68
    GlyphPalette4 { fg = "#7aa2f7" }, -- GlyphPalette4  xxx guifg=#7aa2f7
    GlyphPalette6 { fg = "#73daca" }, -- GlyphPalette6  xxx guifg=#73daca
    GlyphPalette7 { fg = "#c0caf5" }, -- GlyphPalette7  xxx guifg=#c0caf5
    GlyphPalette9 { fg = "#f7768e" }, -- GlyphPalette9  xxx guifg=#f7768e

    LspSagaCodeActionTitle { fg = "#2ac3de" }, -- LspSagaCodeActionTitle xxx guifg=#2ac3de
    LspSagaDefPreviewBorder { fg = "#9ece6a" }, -- LspSagaDefPreviewBorder xxx guifg=#9ece6a
    LspSagaCodeActionContent { fg = "#9d7cd8" }, -- LspSagaCodeActionContent xxx guifg=#9d7cd8
    LspSagaSignatureHelpBorder { fg = "#f7768e" }, -- LspSagaSignatureHelpBorder xxx guifg=#f7768e

    ReferencesIcon { fg = "#7aa2f7" }, -- ReferencesIcon xxx guifg=#7aa2f7
    CmpDocumentationBorder { fg = "#3d59a1", bg = "#1f2335" }, -- CmpDocumentationBorder xxx guifg=#3d59a1 guibg=#1f2335
    LspSignatureActiveParameter { fg = "#ff9e64" }, -- LspSignatureActiveParameter xxx guifg=#ff9e64
    DefinitionIcon { fg = "#7aa2f7" }, -- DefinitionIcon xxx guifg=#7aa2f7

    GitGutterDelete { fg = "#b2555b" }, -- GitGutterDelete xxx guifg=#b2555b
    GitGutterChange { fg = "#536c9e" }, -- GitGutterChange xxx guifg=#536c9e
    GitGutterAdd { fg = "#266d6a" }, -- GitGutterAdd   xxx guifg=#266d6a

    LspTroubleCount { fg = "#bb9af7", bg = "#3b4261" }, -- LspTroubleCount xxx guifg=#bb9af7 guibg=#3b4261

    Sneak { fg = "#292e42", bg = "#bb9af7" }, -- Sneak          xxx guifg=#292e42 guibg=#bb9af7

    BufferTabpage { fg = "#3d59a1", bg = "#1f2335" }, -- BufferTabpage  xxx guifg=#3d59a1 guibg=#1f2335
    BufferTabpages { bg = "#1f2335" }, -- BufferTabpages xxx guibg=#1f2335

    LspCodeLens { fg = "#565f89" }, -- LspCodeLens    xxx guifg=#565f89
    debugBreakpoint { fg = "#0db9d7", bg = "#22374b" }, -- debugBreakpoint xxx guifg=#0db9d7 guibg=#22374b
    mkdCodeDelimiter { fg = "#c0caf5", bg = "#414868" }, -- mkdCodeDelimiter xxx guifg=#c0caf5 guibg=#414868
    htmlH1 { gui = "bold", fg = "#bb9af7" }, -- htmlH1         xxx gui=bold guifg=#bb9af7
    qfFileName { fg = "#7aa2f7" }, -- qfFileName     xxx guifg=#7aa2f7
    qfLineNr { fg = "#737aa2" }, -- qfLineNr       xxx guifg=#737aa2
    Italic { gui = "italic" }, -- Italic         xxx gui=italic
    markdownCodeBlock { fg = "#1abc9c" }, -- markdownCodeBlock xxx guifg=#1abc9c
    htmlH2 { gui = "bold", fg = "#7aa2f7" }, -- htmlH2         xxx gui=bold guifg=#7aa2f7
    VisualNOS { bg = "#364a82" }, -- VisualNOS      xxx guibg=#364a82
    Bold { gui = "bold" }, -- Bold           xxx gui=bold
    NormalSB { fg = "#a9b1d6", bg = "#1f2335" }, -- NormalSB       xxx guifg=#a9b1d6 guibg=#1f2335
    SignColumnSB { fg = "#3b4261", bg = "#1f2335" }, -- SignColumnSB   xxx guifg=#3b4261 guibg=#1f2335
    CursorIM { fg = "#24283b", bg = "#c0caf5" }, -- CursorIM       xxx guifg=#24283b guibg=#c0caf5

    LspReferenceWrite { bg = "#3b4261" }, -- LspReferenceWrite xxx guibg=#3b4261
    LspReferenceRead { bg = "#3b4261" }, -- LspReferenceRead xxx guibg=#3b4261
    LspReferenceText { bg = "#3b4261" }, -- LspReferenceText xxx guibg=#3b4261
  }
end)
return theme
