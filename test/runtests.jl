using ParameterStudies
using Test
using JET

@testset "ParameterStudies.jl" begin
    @testset "Code linting (JET.jl)" begin
        JET.test_package(ParameterStudies; target_defined_modules = true)
    end
end
