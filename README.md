# Cantilever Beam Deflection Analysis — SolidWorks FEA vs. MATLAB vs. Analytical

A comparative structural analysis project: the same cantilever beam, under
the same point load, solved three ways — by hand (Euler-Bernoulli beam
theory), numerically (MATLAB), and with finite element analysis (SolidWorks
Simulation) — to validate that the FEA result matches known-correct theory.

**Why this project:** cross-checking FEA against hand calculations is a core
skill in structural analysis — it's how you catch a wrong boundary condition,
a bad mesh, or a unit error before trusting a simulation result. This project
demonstrates that workflow on a simple, verifiable case.

## Problem setup
- Cantilever beam, one end fixed, point load at the free end
- Length: 500 mm | Cross-section: 20 mm x 10 mm rectangular | Material: Steel
- Load: 100 N at the free end

## Method
1. **Analytical** — closed-form Euler-Bernoulli solution for max deflection,
   bending moment, and bending stress
2. **MATLAB** — same formulas implemented as a script (`matlab/beam_deflection.m`),
   producing the same numbers plus a full deflection curve along the beam
3. **SolidWorks Simulation (FEA)** — the beam modeled and meshed in SolidWorks,
   solved with a static study, following `solidworks/how_to_run_the_simulation.md`

## Results

| Quantity              | Analytical | MATLAB | SolidWorks FEA |
|------------------------|:-----------:|:------:|:----------------:|
| Max deflection (mm)    | 12.50       | 12.50   | *pending*        |
| Max bending stress (MPa) | 150.0     | 150.0   | *pending*        |

Full comparison and notes: [`results/comparison_table.md`](results/comparison_table.md)

*(SolidWorks column will be filled in once the simulation is run — see
`solidworks/how_to_run_the_simulation.md` for the exact steps used.)*

## Deflection curve (analytical / MATLAB)
![Deflection curve](results/deflection_curve.png)

## Repo structure
```
beam-project/
├── README.md
├── matlab/
│   └── beam_deflection.m          # analytical + numerical solution, generates plot
├── solidworks/
│   └── how_to_run_the_simulation.md  # step-by-step FEA setup used for this project
└── results/
    ├── comparison_table.md        # side-by-side results + notes
    └── deflection_curve.png       # output plot from the MATLAB script
```

## Tools used
SolidWorks & SolidWorks Simulation, MATLAB (or GNU Octave — free and
compatible), Euler-Bernoulli beam theory

## Author
Kailas K Thevar — Mechanical Engineering, GEC Thrissur
[kailaskthevar@gmail.com](mailto:kailaskthevar@gmail.com)
