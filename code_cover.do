# ----------------------------------------
# Clean previous simulation data
# ----------------------------------------
quit -sim
vdel -all
vlib work

# ----------------------------------------
# Compile with CODE COVERAGE enabled
# bcs = branch + condition + statement
# ----------------------------------------
vlog -cover bcs bcd_adder.sv
vlog -cover bcs tb_bcdadder.sv

# ----------------------------------------
# Run simulation with coverage collection
# ----------------------------------------
vsim -coverage tb_bcdadder
run -all

# ----------------------------------------
# Generate HTML coverage report
# Folder name: covhtmlreport (default)
# ----------------------------------------
coverage report -html covhtmlreport

# ----------------------------------------
# Optional: print summary in transcript
# ----------------------------------------
coverage report -summary

# ----------------------------------------
# End
# ----------------------------------------
quit -sim
