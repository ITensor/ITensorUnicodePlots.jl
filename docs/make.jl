using ITensorUnicodePlots
using Documenter

DocMeta.setdocmeta!(
  ITensorUnicodePlots, :DocTestSetup, :(using ITensorUnicodePlots); recursive=true
)

makedocs(;
  modules=[ITensorUnicodePlots],
  authors="ITensor developers",
  sitename="ITensorUnicodePlots.jl",
  format=Documenter.HTML(;
    canonical="https://ITensor.github.io/ITensorUnicodePlots.jl",
    edit_link="main",
    assets=String[],
  ),
  pages=["Home" => "index.md"],
)

deploydocs(; repo="github.com/ITensor/ITensorUnicodePlots.jl", devbranch="main")
