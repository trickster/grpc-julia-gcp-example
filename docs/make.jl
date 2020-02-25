using Documenter, MyPkg2

makedocs(;
    modules=[MyPkg2],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/sivakon/MyPkg2.jl/blob/{commit}{path}#L{line}",
    sitename="MyPkg2.jl",
    authors="Sivaram Konanki",
    assets=String[],
)

deploydocs(;
    repo="github.com/sivakon/MyPkg2.jl",
)
