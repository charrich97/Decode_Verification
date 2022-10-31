package decode_env_pkg;
  // ****************************************************************************
  // Import UVM/UVMF Packages and Macros 
  // ****************************************************************************
  import    uvm_pkg::*                          ;
  import    questa_uvm_pkg::*                   ;
  import    uvmf_base_pkg::*                    ;          

  import    decode_in_pkg::*                    ;
  import    decode_out_pkg::*                   ;
  import    lc3_prediction_pkg::*               ;
  `include  "uvm_macros.svh"                   

  `include "src/decode_environment_typedefs.svh";
  `include "src/decode_predictor.svh"           ;
  `include "src/decode_scoreboard.svh"          ;
  `include "src/decode_environment.svh"         ;
  `include "src/decode_env_configuration.svh"   ;

endpackage
