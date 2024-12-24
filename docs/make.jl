using ProblematicAnimals
using Documenter

DocMeta.setdocmeta!(ProblematicAnimals, :DocTestSetup, :(using ProblematicAnimals); recursive=true)

makedocs(;
    modules=[ProblematicAnimals],
    authors="gg <gg@nowhere> and contributors",
    sitename="ProblematicAnimals.jl",
    format=Documenter.HTML(;
        canonical="https://g-gundam.github.io/ProblematicAnimals.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/g-gundam/ProblematicAnimals.jl",
    devbranch="main",
)
