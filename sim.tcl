open_project ./project_1.xpr
reset_run synth_1
launch_runs synth_1 -jobs 3
wait_on_run synth_1
launch_runs impl_1 -jobs 3
wait_on_run impl_1
set_property -name {xsim.simulate.log_all_signals} -value {true} -objects [get_filesets sim_1]
launch_simulation
launch_simulation -mode post-synthesis -type timing
source full_adder_tb.tcl
launch_simulation -mode post-implementation -type timing
source full_adder_tb.tcl
