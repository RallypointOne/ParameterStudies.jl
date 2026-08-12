using ParameterStudies
using Documenter

DocMeta.setdocmeta!(ParameterStudies, :DocTestSetup, :(using ParameterStudies); recursive=true)

makedocs(;
    modules=[ParameterStudies],
    authors="Kyle Beggs (beggskw@gmail.com) and contributors",
    sitename="ParameterStudies.jl",
    format=Documenter.HTML(;
        canonical="https://RallypointOne.github.io/ParameterStudies.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RallypointOne/ParameterStudies.jl",
    devbranch="main",
)
