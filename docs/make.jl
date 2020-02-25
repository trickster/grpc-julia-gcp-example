using Documenter, GoogleLanguageService 

makedocs(;
    modules=[GoogleLanguageService],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/sivakon/grpc-julia-gcp-example/blob/{commit}{path}#L{line}",
    sitename="Google Language Service",
    authors="Sivaram Konanki",
    assets=String[],
)

deploydocs(;
    repo="github.com/sivakon/grpc-julia-gcp-example",
)
