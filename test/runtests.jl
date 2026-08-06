using SweepKit
using Test
using JET

@testset "SweepKit.jl" begin
    @testset "Code linting (JET.jl)" begin
        JET.test_package(SweepKit; target_defined_modules = true)
    end
    # Write your tests here.
end
