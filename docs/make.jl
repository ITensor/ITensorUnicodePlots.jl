using Documenter: Documenter, DocMeta, deploydocs, makedocs
using ITensorFormatter: ITensorFormatter
using ITensorUnicodePlots: ITensorUnicodePlots

DocMeta.setdocmeta!(
    ITensorUnicodePlots, :DocTestSetup, :(using ITensorUnicodePlots); recursive = true
)

ITensorFormatter.make_index!(pkgdir(ITensorUnicodePlots))

makedocs(;
    modules = [ITensorUnicodePlots],
    authors = "ITensor developers <support@itensor.org> and contributors",
    sitename = "ITensorUnicodePlots.jl",
    format = Documenter.HTML(;
        canonical = "https://itensor.github.io/ITensorUnicodePlots.jl",
        edit_link = "main",
        assets = ["assets/favicon.ico", "assets/extras.css"]
    ),
    pages = ["Home" => "index.md", "Reference" => "reference.md"]
)

deploydocs(;
    repo = "github.com/ITensor/ITensorUnicodePlots.jl", devbranch = "main",
    push_preview = true
)
