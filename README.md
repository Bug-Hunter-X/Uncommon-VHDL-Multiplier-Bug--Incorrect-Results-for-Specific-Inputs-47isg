# Uncommon VHDL Multiplier Bug
This repository demonstrates a subtle bug in a VHDL 4-bit multiplier. The multiplier produces incorrect results for certain input combinations.  The bug is related to how signal assignments and unsigned arithmetic are handled within the VHDL process.

## Bug Description
The `bug.vhdl` file contains the faulty VHDL code.  For specific inputs, the calculated product is incorrect. This is likely due to the implicit type conversion and potential issues with the internal signal `temp_product`. This is not immediately obvious from a simple visual inspection.

## Solution
The solution is presented in `bugSolution.vhdl`. The key fix is related to improving the handling of unsigned arithmetic, ensuring that the conversion and assignment of the product are correctly managed and that the process correctly handles potential overflow conditions.

## Running the Code
To run and test the VHDL code, you'll need a VHDL simulator (e.g., ModelSim, GHDL).  Compile both files and run appropriate testbenches to observe the correct and incorrect outputs. Pay close attention to the inputs which trigger the erroneous behavior in the original code.
