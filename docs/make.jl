using Open5e
using Documenter

DocMeta.setdocmeta!(Open5e, :DocTestSetup, :(using Open5e); recursive=true)

makedocs(;
    modules=[Open5e],
    authors="Eric Ekholm",
    repo="https://github.com/ekholme/Open5e.jl/blob/{commit}{path}#{line}",
    sitename="Open5e.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ekholme.github.io/Open5e.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ekholme/Open5e.jl",
    devbranch="main",
)
