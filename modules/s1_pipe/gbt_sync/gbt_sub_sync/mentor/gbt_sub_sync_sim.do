# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
 set QSYS_SIMDIR ../
# #
# # Source the generated IP simulation script.
 source $QSYS_SIMDIR/mentor/msim_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
# set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>
# #
# # Call command to compile the Quartus EDA simulation library.
 dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
 com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/packages/sig_defs_pkg.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/packages/var_defs_pkg.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/packages/util_pkg.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_sync/gbt_sub_sync/gbt_sub_sync.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_sync/gbt_sub_sync_tb.vhd

# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
 set TOP_LEVEL_NAME gbt_sub_sync_tb
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
elab
# #
# # Run the simulation.
# # Top level
 add wave *

# # Submodule
# add wave sim:/gbt_sync_tb/UUT/gbt_sync(3)/gbt_sync_inst/clk_i
# add wave sim:/gbt_sync_tb/UUT/gbt_sync(3)/gbt_sync_inst/gbt_sub_syncO
# add wave sim:/gbt_sync_tb/UUT/gbt_sync(3)/gbt_sync_inst/gbt_sub_sync_rd


view structure
view signals
run -all
# #
# # Report success to the shell.
# exit -code 0
