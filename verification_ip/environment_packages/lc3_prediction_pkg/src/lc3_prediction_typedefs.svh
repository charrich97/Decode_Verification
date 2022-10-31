typedef enum bit [3:0] { 
	ADD = 4'd1 ,
	AND = 4'd5 ,
	NOT = 4'd9 ,
	BR  = 4'd0 ,
	JMP = 4'd12,
	LD  = 4'd2 ,
	LDR = 4'd6 ,
	LDI = 4'd10,
	LEA = 4'd14,
	ST  = 4'd3 ,
	STR = 4'd7 ,
	STI = 4'd11
} opcode;

typedef enum bit [1:0] {ALUOUT=2'd0, MEMOUT=2'd1, PCOUT=2'd2} w_control_t;
typedef enum bit {MEM_CONTROL_ENABLED=1'b1, MEM_CONTROL_DISABLED=1'b0} mem_control_t;

