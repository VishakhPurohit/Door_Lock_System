library verilog;
use verilog.vl_types.all;
entity lock is
    port(
        reset           : in     vl_logic;
        passin          : in     vl_logic_vector(7 downto 0);
        enter           : in     vl_logic;
        \access\        : out    vl_logic;
        count           : out    vl_logic_vector(1 downto 0);
        alarm           : out    vl_logic
    );
end lock;
