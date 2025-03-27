# 3-Tap FIR Filter Implementation in Verilog

This repository presents a Verilog implementation of a 3-Tap Finite Impulse Response (FIR) filter, collaboratively developed by [Eswar Adithya](https://github.com/EswarAdithya011) and [Sarath Kumar Suda](https://github.com/SudaSarath66). Designed for deployment on the Nexys 4 FPGA (xc7a100tcsg324-1), the project is synthesized using Xilinx Vivado and is optimized for high-speed, low-power digital signal processing applications, including audio processing and wireless communication.

## Project Overview

A Finite Impulse Response (FIR) filter is a type of digital filter characterized by a finite duration of its impulse response, meaning it settles to zero in finite time. Unlike Infinite Impulse Response (IIR) filters, FIR filters do not use feedback, ensuring inherent stability and the capability to achieve linear phase responses, which is crucial in applications requiring phase linearity.

In this project, we implement a 3-tap FIR filter, which computes its output based on the weighted sum of the current and two previous input samples. The filter coefficients determine the specific filtering characteristics, such as low-pass, high-pass, or band-pass behavior.

## Repository Structure

The repository is organized to facilitate easy navigation and understanding:

- **Source Files** (`src/`):
  - `FIR_Top.v`: Top-level module that integrates all components of the FIR filter.
  - `Braun_Multiplier.v`: Implements the Braun multiplier for efficient multiplication operations.
  - `RCA_16bit.v`: 16-bit Ripple Carry Adder module used for addition operations.
  - `dff.v`: D Flip-Flop module for data synchronization.
  - `full_adder.v` and `half_adder.v`: Fundamental building blocks for constructing adder circuits.

- **Testbench** (`tb/`):
  - `FIR_Top_tb.v`: Testbench module for simulating and verifying the functionality of the FIR filter.

- **Constraints** (`constraints/`):
  - `Nexys4_Master.xdc`: Constraint file specifying pin assignments and timing constraints for the Nexys 4 FPGA.

- **Documentation and Reports** (`docs/`):
  - `3-Tap_FIR_Filter_Report.pdf`: Comprehensive report detailing the design, implementation, simulation results, and performance analysis of the FIR filter.
  - `README.md`: This file, providing an overview and guidance for the project.

- **Visualizations** (`images/`):
  - `Implementation.png`: Diagram illustrating the structural implementation of the FIR filter.
  - `Power_Usage.png`: Graph depicting the power consumption metrics during operation.
  - `Resource_Utilization.png`: Chart showing the utilization of FPGA resources by the design.
  - `Schematic.png`: Detailed schematic representation of the FIR filter circuit.
  - `Simulation.png`: Waveforms and results obtained from simulation runs.
  - `Synthesis.png`: Snapshot of the synthesis report highlighting key metrics.
  - `Tcl_Console.png`: Screenshot of the TCL console during the implementation process.

- **License**:
  - `LICENSE`: The MIT License governing the use and distribution of this project.

## How to Use

To replicate or utilize this project, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/EswarAdithya011/3-Tap-FIR-Filter.git
   ```


2. **Set Up Xilinx Vivado**:
   - Ensure that Xilinx Vivado Design Suite is installed on your system.
   - Launch Vivado and create a new project.
   - Specify the project name and location, ensuring it matches the directory of the cloned repository.
   - Select the appropriate FPGA part number: `xc7a100tcsg324-1` (corresponding to the Nexys 4 FPGA).

3. **Add Source and Constraint Files**:
   - In the Vivado project, add the Verilog source files located in the `src/` directory.
   - Include the constraint file from the `constraints/` directory to define pin assignments and timing constraints.

4. **Synthesize and Implement the Design**:
   - Run the synthesis process to generate the design netlist.
   - Proceed with the implementation phase to map the design onto the FPGA architecture.
   - After successful implementation, generate the bitstream file required for programming the FPGA.

5. **Program the FPGA**:
   - Connect the Nexys 4 FPGA board to your computer via USB.
   - Power on the FPGA board.
   - In Vivado, open the Hardware Manager and establish a connection to the FPGA board.
   - Program the FPGA with the generated bitstream file.

6. **Verify Functionality**:
   - Apply test signals to the FPGA and observe the output to verify the filter's performance.
   - Utilize the provided testbench (`FIR_Top_tb.v`) to simulate the design and compare the results with expected outcomes.

For an in-depth understanding of the design methodology, implementation details, and performance analysis, refer to the `3-Tap_FIR_Filter_Report.pdf` available in the `docs/` directory.

By providing a structured repository and comprehensive documentation, this project aims to serve as a valuable resource for developers and researchers interested in implementing digital signal processing algorithms on FPGA platforms. 
