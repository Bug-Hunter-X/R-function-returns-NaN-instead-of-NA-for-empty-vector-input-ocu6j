# R Function Bug: NaN instead of NA for Empty Vector

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a vector.  The function correctly handles empty vectors by returning `NA`, but due to how R handles division by zero, it produces `NaN` instead. The solution demonstrates how to correctly handle this edge case to return `NA`.

## Bug Description

The `calculate_mean` function in `bug.R` returns `NaN` instead of `NA` when passed an empty numeric vector.  This is because `sum(numeric(0))` results in 0, and division by `length(numeric(0))`, which is also 0, leads to `NaN` (Not a Number).

## Solution

The `bugSolution.R` file provides a corrected version of the function that explicitly checks for an empty vector and returns `NA` in that case.  This ensures consistent and expected behavior.
