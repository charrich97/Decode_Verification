onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Decode_In_BUs /hdl_top/decode_in_bus/clock
add wave -noupdate -expand -group Decode_In_BUs /hdl_top/decode_in_bus/reset
add wave -noupdate -expand -group Decode_In_BUs /hdl_top/decode_in_bus/enable_decode
add wave -noupdate -expand -group Decode_In_BUs /hdl_top/decode_in_bus/Instr_dout
add wave -noupdate -expand -group Decode_In_BUs /hdl_top/decode_in_bus/npc_in
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/clock
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/reset
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/IR
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/npc_out
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/E_control
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/W_control
add wave -noupdate -expand -group Decode_Out_Bus /hdl_top/decode_out_bus/Mem_control
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/initiator_responder
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/clock_i
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/reset_i
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/enable_decode_i
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/enable_decode_o
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/Instr_dout_i
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/Instr_dout_o
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/npc_in_i
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/npc_in_o
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/initiator_struct
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/responder_struct
add wave -noupdate -group Decode_in_Driver_BFM /hdl_top/decode_in_driver_bfm/first_transfer
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/decode_out_monitor_struct
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/initiator_responder
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/clock_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/reset_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/IR_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/npc_out_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/E_control_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/W_control_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/Mem_control_i
add wave -noupdate -expand -group Decode_Out_Monitor_BFM /hdl_top/decode_out_monitor_bfm/go
add wave -noupdate -expand -group DUT /hdl_top/DUT/clock
add wave -noupdate -expand -group DUT /hdl_top/DUT/reset
add wave -noupdate -expand -group DUT /hdl_top/DUT/enable_decode
add wave -noupdate -expand -group DUT /hdl_top/DUT/dout
add wave -noupdate -expand -group DUT /hdl_top/DUT/npc_in
add wave -noupdate -expand -group DUT /hdl_top/DUT/W_Control
add wave -noupdate -expand -group DUT /hdl_top/DUT/Mem_Control
add wave -noupdate -expand -group DUT /hdl_top/DUT/E_Control
add wave -noupdate -expand -group DUT /hdl_top/DUT/IR
add wave -noupdate -expand -group DUT /hdl_top/DUT/npc_out
add wave -noupdate -expand -group DUT /hdl_top/DUT/M_Control
add wave -noupdate -expand -group DUT /hdl_top/DUT/inst_type
add wave -noupdate -expand -group DUT /hdl_top/DUT/pc_store
add wave -noupdate -expand -group DUT /hdl_top/DUT/mem_access_mode
add wave -noupdate -expand -group DUT /hdl_top/DUT/load
add wave -noupdate -expand -group DUT /hdl_top/DUT/pcselect1
add wave -noupdate -expand -group DUT /hdl_top/DUT/alu_control
add wave -noupdate -expand -group DUT /hdl_top/DUT/pcselect2
add wave -noupdate -expand -group DUT /hdl_top/DUT/op2select
add wave -noupdate -expand -group DUT /hdl_top/DUT/opcode
add wave -noupdate -expand /hdl_top/decode_in_monitor_bfm/do_monitor/decode_in_monitor_struct
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/decode_in_monitor_struct
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/initiator_responder
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/clock_i
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/reset_i
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/enable_decode_i
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/Instr_dout_i
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/npc_in_i
add wave -noupdate -expand -group Decode_In_Monitor_BFM /hdl_top/decode_in_monitor_bfm/go
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {330 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 210
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {282 ns} {406 ns}
