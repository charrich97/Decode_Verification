class decode_predictor extends uvm_subscriber #(decode_in_transaction);
  `uvm_component_utils(decode_predictor)

  uvm_analysis_port #(decode_out_transaction) predictor_ap;

  decode_out_transaction  decode_out_predict_trans;

  extern function new                (string                name = "decode_predictor", uvm_component   parent  = null );
  extern virtual function void write (decode_in_transaction t                                                         );
  bit       Mem_control ;
  bit [1:0] W_control   ;
  
endclass : decode_predictor


function decode_predictor::new(string name = "decode_predictor", uvm_component parent = null);
  super.new(name, parent);
  predictor_ap                = new("predictor_ap"              , this);
endfunction

function void decode_predictor::write(decode_in_transaction t);
  decode_out_predict_trans  = decode_out_transaction::type_id::create("decode_out_predict_trans");
  void'(decode_model( 
                      t.instruction                         ,
                      t.npc_in                              ,
                      decode_out_predict_trans.IR           ,
                      decode_out_predict_trans.npc_out      ,
                      decode_out_predict_trans.E_control    ,
                      W_control                             ,
                      Mem_control
                    ));
  
  $cast(decode_out_predict_trans.W_control  , W_control   );
  $cast(decode_out_predict_trans.Mem_control, Mem_control );
  
  predictor_ap.write(decode_out_predict_trans);
endfunction
