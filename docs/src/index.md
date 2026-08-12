```@meta
CurrentModule = ParameterStudies
```

# ParameterStudies

ParameterStudies.jl is being built as a domain-neutral framework for reproducible parametric studies over arbitrary Julia models. A parameter sweep is one study design within that framework, alongside global and local sensitivity studies.

!!! warning "Contract-first development"
    The package currently defines its scope and module only. The capabilities below are planned, not yet implemented. Public APIs will be designed against an end-to-end simulation-study workflow before they are stabilized.

## What it does and does not do

ParameterStudies.jl will own the common study lifecycle: define a parameter space and study design, produce deterministic evaluation requests, execute and resume those evaluations, reuse expensive setup, persist results, record provenance, and associate derived analysis artifacts with the study that produced them.

It will not implement simulation models, numerical solvers, automatic differentiation, sensitivity estimators, visualization, optimization, calibration, Bayesian inference, surrogate modeling, general uncertainty propagation, or arbitrary workflow graphs. Those concerns remain in focused packages that can consume or extend the study abstraction.

## Planned capabilities

- **Study designs:** Cartesian parameter sweeps first, followed by integration points for sampling-based and sensitivity designs.
- **Stable identity:** Canonical, versioned identities for studies and evaluation requests rather than Julia's process-dependent `Base.hash`.
- **Reliable execution:** Resumable execution, skip-completed behavior, and per-evaluation failure isolation behind a small executor protocol.
- **Reusable setup:** Memory and disk caches keyed by explicit parameter subsets so expensive setup work can be shared safely.
- **Results and provenance:** Persistent outputs accompanied by configuration identity, source revision, environment digest, and Julia version.
- **Numerical integrations:** Optional integrations with established sampling, global-sensitivity, differentiation, and solver-aware sensitivity packages; ParameterStudies.jl will orchestrate and record their work without reimplementing their algorithms.

## Study lifecycle

```text
parameter space + study design
              │
              ▼
 deterministic evaluation requests
              │
              ▼
 cached setup → execute/resume → persistent results + provenance
                                      │
                                      ▼
                          study-level analysis artifacts
```

Cartesian sweeps and sampling-based global sensitivity studies share the evaluation path. Local or adjoint sensitivities may instead be computed by a solver-aware backend, but their definitions, provenance, and results still belong to the same study record.

## Getting started

The only supported operation in this contract-first release is loading the module:

```julia
using ParameterStudies
```

Executable study examples will be added with the first public study-design and execution APIs.

## Integration boundaries

Global-sensitivity methods such as Sobol and Morris will come from `GlobalSensitivity.jl`, with sampling designs supplied by packages such as `QuasiMonteCarlo.jl`. Generic local derivatives can integrate through `DifferentiationInterface.jl`, while solver-aware forward and adjoint sensitivities remain the responsibility of packages such as `SciMLSensitivity.jl`.

```@index
```

```@autodocs
Modules = [ParameterStudies]
```
