class decode_environment extends uvm_env;
  `uvm_component_utils(decode_environment)
  
  decode_in_agent   decode_in_agent_inst    ;
  decode_out_agent  decode_out_agent_inst   ;
  decode_predictor  decode_predict_inst     ;
  decode_scoreboard decode_sb_inst          ;

extern function new                                   (string     name = "decode_environment", uvm_component   parent   = null       );
extern virtual function void build_phase              (uvm_phase  phase                                 );
extern virtual function void connect_phase            (uvm_phase  phase                                 );
extern virtual function void end_of_elaboration_phase (uvm_phase  phase                                 );

endclass : decode_environment


function decode_environment::new(string name = "decode_environment", uvm_component parent = null);
  super.new(name, parent);
endfunction

function void decode_environment::build_phase(uvm_phase phase); 
  super.build_phase(phase);
  decode_in_agent_inst  = decode_in_agent   ::  type_id ::  create("decode_in_agent_inst"   , this);
  decode_out_agent_inst = decode_out_agent  ::  type_id ::  create("decode_out_agent_inst"  , this);
  decode_predict_inst   = decode_predictor  ::  type_id ::  create("decode_predict_inst"    , this);
  decode_sb_inst        = decode_scoreboard ::  type_id ::  create("decode_sb_inst"         , this);  
endfunction


function void decode_environment::connect_phase(uvm_phase phase);
  decode_in_agent_inst.monitored_ap.connect     (decode_predict_inst.analysis_export  );
  decode_predict_inst.predictor_ap.connect      (decode_sb_inst.expected              );
  decode_out_agent_inst.monitored_ap.connect    (decode_sb_inst.actual                );
endfunction

function void decode_environment::end_of_elaboration_phase(uvm_phase phase);
  uvm_top.print_topology();
endfunction
