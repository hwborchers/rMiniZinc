**MiniZinc** is a system and (algebraic) modeling language for solving constraint satisfaction and combinatorial optimization problems. The software is free and open-source. There is a graphical user interface *MiniZinc IDE* and several solvers are included. Other free resp. commercial solvers can be used with MiniZinc as a frontend and modeling tool.

### MiniZinc Software and Documents

- [MiniZinc](https://www.minizinc.org/) home page
- MiniZinc [Software](https://www.minizinc.org/software.html)
- MiniZinc [Standard Lib](https://github.com/MiniZinc/libminizinc/tree/master/share/minizinc/std)
  <p></p>
- MiniZinc [Handbook](https://www.minizinc.org/doc-2.3.2/en/) (version 2.3.2)
- A MiniZinc [Tutorial](https://www.minizinc.org/downloads/doc-latest/minizinc-tute.pdf)
- The MiniZinc [IDE](https://www.minizinc.org/ide/index.html)
  <p></p>
- [MiniSearch](https://www.minizinc.org/minisearch/), a meta-search language for MiniZinc

### Examples of MiniZinc Models

- More MiniZinc [Resources](https://www.minizinc.org/resources.html)
- Some MiniZinc [Examples](https://github.com/MiniZinc/minizinc-examples)
- MiniZinc [Benchmarks](https://github.com/MiniZinc/minizinc-benchmarks) with many example models

<p>See also the Coursera courses *Basic Modeling for Discrete Optimization* <br/>and *Advanced Modeling for Discrete Optimization* by Peter Stuckey.</p>

### External Interfaces to MiniZinc

- [JMiniZinc]()  
  "is a Java interface to the constraint modeling language MiniZinc. It provides an API to generate MiniZinc models, to start the MiniZinc compiler and solvers [...], and to parse the output of solvers."
  
- [MiniZinc Python](https://pypi.org/project/minizinc/)  
  "provides an interface from Python to the MiniZinc driver. [... It] allows easy access to MiniZinc using native Python structures." There is a description of how to use `minizinc` with Jupyter notebooks.

There is currently no direct C++ interface to `libminizinc`. The best option seems to be to run MiniZinc as an external process. Using `mzn-fzn` (in the MiniZinc 2 distribution), one can compile and run it with a given solver as

    mzn-fzn --solver fzn-gecode model.mzn model_data.dzn

### Alternatives

- **Google OR Tools**  
  is an open-source, fast and portable software suite for solving combinatorial optimization and constraint satisfaction problems. Wrappers in Python, C# and Java are provided.

Some *Logic Programming Systems* such as 'ECLiPSe', 'SWI-Prolog' (both free to use), 'B-Prolog', 'SICStus' (both commercial) and others can solve constraint satisfaction problems quite efficiently.

R users can call some of the NEOS solvers, for example by utilizing the R package rneos on CRAN, at least for Integer Programming (IP) and Mixed-Integer Linear Programming (MILP).
