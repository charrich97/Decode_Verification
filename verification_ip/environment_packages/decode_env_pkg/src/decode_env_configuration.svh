class decode_env_configuration extends uvm_object ;
  `uvm_object_utils(decode_env_configuration)
    
  decode_in_configuration   decode_in_configuration_inst     ;
  decode_out_configuration  decode_out_configuration_inst    ;

  extern function       new             ( string                name              = "decode_env_configuration"  );
  extern function void  initialize      ( uvmf_sim_level_t      sim_level                                       , 
                                          string                environment_path                                , 
                                          string                agent_paths         [decode_component_index_t]  ,
                                          string                interface_names     [decode_component_index_t]  ,  
                                          uvm_reg_block         register_model                                  , 
                                          uvmf_active_passive_t interface_activities[decode_component_index_t]
                                        );
endclass
  
  function decode_env_configuration::new(string name = "decode_env_configuration");
    super.new(name);
    decode_in_configuration_inst   = decode_in_configuration   ::  type_id ::  create("decode_in_configuration_inst"  );
    decode_out_configuration_inst  = decode_out_configuration  ::  type_id ::  create("decode_out_configuration_inst" );
  endfunction

  function void decode_env_configuration::initialize( uvmf_sim_level_t      sim_level                                       , 
                                                      string                environment_path                                , 
                                                      string                agent_paths         [decode_component_index_t]  ,
                                                      string                interface_names     [decode_component_index_t]  , 
                                                      uvm_reg_block         register_model                                  , 
                                                      uvmf_active_passive_t interface_activities[decode_component_index_t]
                                                    );

    decode_in_configuration_inst.initialize ( interface_activities                      [DECODE_IN]     , 
                                              {environment_path, agent_paths            [DECODE_IN]}    ,
                                              interface_names                           [DECODE_IN]   
                                            );
    decode_in_configuration_inst.initiator_responder   = INITIATOR;

    decode_out_configuration_inst.initialize( interface_activities                      [DECODE_OUT]    ,
                                              {environment_path, agent_paths            [DECODE_OUT]}   ,
                                              interface_names                           [DECODE_OUT]  
                                            );
    decode_out_configuration_inst.initiator_responder  = RESPONDER;
  endfunction

