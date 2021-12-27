using OhMyREPL
using Crayons
import OhMyREPL: Passes.SyntaxHighlighter

OhMyREPL.input_prompt!("julia >", :magenta)
OhMyREPL.enable_pass!("RainbowBrackets", false)

scheme = SyntaxHighlighter.ColorScheme()

SyntaxHighlighter.symbol!(scheme, Crayon(foreground = :magenta))
SyntaxHighlighter.comment!(scheme, Crayon(foreground = :dark_gray, italics = true))
SyntaxHighlighter.string!(scheme, Crayon(foreground = :green))
SyntaxHighlighter.call!(scheme, Crayon(foreground = :blue))
SyntaxHighlighter.op!(scheme, Crayon(foreground = :yellow))
SyntaxHighlighter.keyword!(scheme, Crayon(foreground = :magenta, bold = true))
SyntaxHighlighter.macro!(scheme, Crayon(foreground = :blue, italics = true))
SyntaxHighlighter.function_def!(scheme, Crayon(foreground = :blue))
SyntaxHighlighter.text!(scheme, Crayon(foreground = :default))
SyntaxHighlighter.error!(scheme, Crayon(foreground = :red))
SyntaxHighlighter.argdef!(scheme, Crayon(foreground = :blue, italics = true))
SyntaxHighlighter.number!(scheme, Crayon(foreground = :cyan))

SyntaxHighlighter.add!("DA UI", scheme)
colorscheme!("DA UI")

