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
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_rfmt/loc_rfmt/o2_h_synth/o2_h_synth.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_rfmt/loc_rfmt/loc_rfmt.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_rfmt/gbt_rfmt.vhd
 #vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_sync/gbt_sub_sync/fifo.ip
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_sync/gbt_sub_sync/gbt_sub_sync.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/gbt_sync/gbt_sync.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s1_pipe/s1_pipe.vhd
 #vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s2_pipe/s2_sub_pipe/ram.ip
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s2_pipe/s2_sub_pipe/s2_sub_pipe.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s2_pipe/s2_pipe.vhd
 #vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s3_pipe/ram_s3.ip
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/modules/s3_pipe/s3_pipe.vhd
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/mid_cru_proto.vhd	
 vcom -93 -work work C:/Users/natha/Desktop/mid_cru_proto/mid_cru_proto_tb.vhd	
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
 set TOP_LEVEL_NAME mid_cru_proto_tb
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
elab
# #
# # Run the simulation.
## add wave sim:/mid_cru_proto_tb/cmp_mid_cru_proto/s3_inst/s3_pipeI
## add wave sim:/mid_cru_proto_tb/cmp_mid_cru_proto/s3_inst/s3_busy_o 
## add wave sim:/mid_cru_proto_tb/cmp_mid_cru_proto/s3_inst/s3_pipeO


## view structure
## view signals
run -all
# #
# # Report success to the shell.
# exit -code 0
