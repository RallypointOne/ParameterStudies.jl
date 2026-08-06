using SweepKit
using Documenter

DocMeta.setdocmeta!(SweepKit, :DocTestSetup, :(using SweepKit); recursive=true)

makedocs(;
    modules=[SweepKit],
    authors="Kyle Beggs (beggskw@gmail.com) and contributors",
    sitename="SweepKit.jl",
    format=Documenter.HTML(;
        canonical="https://RallypointOne.github.io/SweepKit.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RallypointOne/SweepKit.jl",
    devbranch="main",
)
