# ParameterStudies

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://RallypointOne.github.io/ParameterStudies.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://RallypointOne.github.io/ParameterStudies.jl/dev/)
[![Build Status](https://github.com/RallypointOne/ParameterStudies.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/RallypointOne/ParameterStudies.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/RallypointOne/ParameterStudies.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/RallypointOne/ParameterStudies.jl)

ParameterStudies.jl is being built as a domain-neutral framework for reproducible parametric studies. Its shared lifecycle will cover study design, deterministic evaluation requests, resumable execution, cached setup, persistent results, and provenance. Cartesian parameter sweeps will be the first design; global and local sensitivity analyses will integrate through established numerical packages rather than being reimplemented here.

The package currently defines its scope and module only. The first public APIs will be developed against a real simulation-study workflow before they are stabilized.

## Boundaries

ParameterStudies.jl will own the reproducible study record and orchestration layer. It will not own simulation models, numerical solvers, automatic differentiation, sensitivity estimators, visualization, optimization, calibration, Bayesian inference, surrogate modeling, or arbitrary workflow graphs.

See the [development documentation](https://RallypointOne.github.io/ParameterStudies.jl/dev/) for the planned study lifecycle and integration boundaries.
