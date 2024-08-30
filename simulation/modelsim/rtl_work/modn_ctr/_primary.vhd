library verilog;
use verilog.vl_types.all;
entity modn_ctr is
    generic(
        n               : integer := 4;
        width           : integer := 2
    );
    port(
        clk             : in     vl_logic;
        E               : in     vl_logic;
        rstn            : in     vl_logic;
        cnt             : out    vl_logic_vector;
        \access\        : out    vl_logic;
        alarm           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of width : constant is 1;
end modn_ctr;
