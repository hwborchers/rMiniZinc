# R MiniZinc Interface for R

This is the project proposal for Google Summer of Code (R-GSoC) 2020 under the title "MiniZinc Interface for R".
For student applications please see the official page at [R-GSoC 2020](https://github.com/rstats-gsoc/gsoc2020/wiki).

## Background

*(Explain the motivation for your coding project. What problem would it solve?)*

[MiniZinc](https://www.minizinc.org/) is a free and open-source constraint modeling language. Constraint satisfaction and discrete optimization problems can be formulated in a high-level modeling language. Models are compiled into an intermediate representation  that is understood by a wide range of solvers.
MiniZinc itself provides several solvers, for instance GeoCode.

Typical problem classes that can be solved with MiniZinc and its modeling language are (linear) integer programming, knapsack and binpacking, graph algorithms and network flows, assignment problems, resource scheduling or planning, routing (incl. mid-sized TSP) and other constraint satisfaction problems.

In general, connecting to MiniZinc will enable R users to solve problems in Operation Research that cannot be tackled with R or available packages at the moment.

(NOTE: an alternative could be to integrate the Google OR Tools with R, but this will probably mean asking too much of a student project of three months.)


## Related work

*(What other R packages with similar functionality already exist? Why aren't they good enough?)*

There are some packages on CRAN for discrete optimization, see the subsection "Combinatorial Optimization" of the [Optimization and Mathematical Programming](https://CRAN.R-project.org/view=Optimization) Task View. None of these packages are powerful or efficient enough to solve even mid-sized problems in combinatorial optimization.

## Details of your coding project

*(What exactly do you want your student to code in the 3-month deadline?)*

The PyPi package [minizinc](https://pypi.org/project/minizinc/) for "Access[ing] MiniZinc directly from Python" will serve as an example of how to integrate this software into another programming environment. A first and basic functionality will be to hand user-defined models over to MiniZinc and return the result as a string.

Then, for special problem classes -- as the ones mentioned above -- R functions will be coded that generate (or resort to) parametric MiniZinc models, fill corresponding data files, call `minizinc` on the command line, and 'browse' the MiniZinc result for return values of the R function. Input checking has to be done on the R side before MiniZinc is involved.

A function call in R could look like (for the 0-1 knapsack problem)

    mzn_knapsack(no_items, profit, weight, lower = 0, upper = 1)

and the result will be a list with the number of items selected and the total profit. Input checking means, e.g., that the profit and weight vectors have a length equal to the number of items, or that the lower and upper bounds can be satisfied.

It is obvious that some understanding of the MiniZinc algebraic modeling language is necessary for working on this project. On the other hand, the models required here do not appear to be too difficult. Many of the models needed can be derived from the MiniZinc handbook, tutorial, or from example pages on the Internet.

This GSoC projects expects 15-20 problem types to be covered with R functions,
including input checking and error handling, as well as R package documentation. A vignette will introduce to the package, to the problem areas, and to the underlying MiniZinc code (to enable the user to adapt to specific own problem variations).

A requirement for installing this package will be that MiniZinc has been installed. Either the `minizinc` command is available from the command line or has to provide an absolute path to the command. Command options will be possible to give through the R interface or a special option command. This has to be checked on the mayor operating systems.

## Expected impact

*(Mentors, please explain how this project will produce a useful package for the R community.)*

The result of such a project will be an R package that allows solving Operations Research and combinatorial optimization problems by calling predefined R functions. The user has to provide parameters for predefined functions, a generated model will be presented to MiniZinc, and the solution returned such that it can be further utilized in the R environment.

It will also be possible to send in user-defined models as text (in the MiniZinc modeling language) and show the MiniZinc output as string. The user can still copy parts of the output and continue working in the R environment. For this a certain knowledge of the MiniZinc modeling language will be needed. A vignette shall provide example codes that can be modified to by the user to cover more specialized problems.

## Mentors

*(Students, please contact mentors below after completing at least one of the tests below.)*

- EVALUATING MENTOR: Hans W. Borchers <hwborchers@gmail.com> is the author of packages on CRAN and R-Forge and the maintainer of the Optimization and the Numerical Mathematics task views. He has served as a mentor for several R-GSoC projects during the last years.

- CO-MENTOR: tbd.

## MiniZinc Resources

See [here](MiniZincInformation.md) for a list of links to MiniZinc resources like software, documentation, model examples, and related software.

## Tests

*(Students, please do one or more of the following tests before contacting the mentors above.)*

Requirements for this GSoC project are a good knowledge of R programming, hopefully some experience with algebraic modeling languages, and a strong interest in solving combinatorial optimization problems

- EASY:  
  (a) Install MiniZinc on your computer and run some of the examples, for
  example from the Handbook or the examples pages;  
  (b) Study a bit of the MiniZinc modeling language and formulate and solve
  an example of your own. How will the R input and output look like?
- MEDIUM:  
  (a) Install the Python package and run some of the examples; describe how 
  this package interfaces MiniZinc with Python and returns its result;  
  (b) Write an R function that processes the result of a MiniZinc solver and
  and emulates the output of a typical R function.
- HARD:  
  (a) Make a one-function R package that generates a MiniZink model for this
  function and returns the prepared output to R, for example a linear integer 
  programming problem;  
  (b) Write a vignette entry for this function, including the MiniZinc code, 
  and describe some possible extensions.

## Solutions of tests

*(Students, please post a link to your test results here.)*

STUDENT 1 NAME, LINK TO GITHUB PROFILE, LINK TO TEST RESULTS
...

