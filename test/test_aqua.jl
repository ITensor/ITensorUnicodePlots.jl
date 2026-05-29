using Aqua: Aqua
using ITensorUnicodePlots: ITensorUnicodePlots
using Test: @testset

@testset "Code quality (Aqua.jl)" begin
    # `persistent_tasks=false` skips Aqua's persistent-tasks subprocess check,
    # which misreports precompile-cache mismatches as task leaks
    # (https://github.com/JuliaTesting/Aqua.jl/issues/315) and has been flaking
    # under integration-test resolves that re-precompile many transitive deps.
    Aqua.test_all(ITensorUnicodePlots; persistent_tasks = false)
end
