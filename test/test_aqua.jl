using Aqua: Aqua
using ITensorUnicodePlots: ITensorUnicodePlots
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    Aqua.test_all(ITensorUnicodePlots)
end
