# import Pkg; Pkg.add("OhMyREPL"); Pkg.add("Crayons")

using OhMyREPL
using Crayons
import OhMyREPL: Passes.SyntaxHighlighter

OhMyREPL.enable_pass!("RainbowBrackets", false)

scheme = SyntaxHighlighter.ColorScheme()

SyntaxHighlighter.symbol!(scheme, Crayon(foreground = :blue, bold = true))
SyntaxHighlighter.comment!(scheme, Crayon(foreground = :white))
SyntaxHighlighter.string!(scheme, Crayon(foreground = :light_blue))
SyntaxHighlighter.call!(scheme, Crayon(foreground = :blue))
SyntaxHighlighter.op!(scheme, Crayon(foreground = :red))
SyntaxHighlighter.keyword!(scheme, Crayon(foreground = :red, bold = true))
SyntaxHighlighter.macro!(scheme, Crayon(foreground = :blue, italics = true))
SyntaxHighlighter.function_def!(scheme, Crayon(foreground = :magenta))
SyntaxHighlighter.text!(scheme, Crayon(foreground = :default))
SyntaxHighlighter.error!(scheme, Crayon(foreground = :red))
SyntaxHighlighter.argdef!(scheme, Crayon(foreground = :blue))
SyntaxHighlighter.number!(scheme, Crayon(foreground = :blue))

SyntaxHighlighter.add!("Terminal", scheme)
colorscheme!("Terminal")

function funcdef(x::Float64, y::Int64)
    y = 100_000
    x = :foo
    s = "I am a happy string"
    c = `mycmd`
    @time 1+1
    #= Comments look like this =#
    z = funccall(x, y)
    5 * 3 + 2 - 1
end