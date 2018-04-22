library verilog;
use verilog.vl_types.all;
entity contadorEstado is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        edo_Cont        : in     vl_logic;
        a3              : in     vl_logic;
        a2              : in     vl_logic;
        a1              : in     vl_logic;
        a0              : in     vl_logic;
        Q               : inout  vl_logic_vector(3 downto 0)
    );
end contadorEstado;
