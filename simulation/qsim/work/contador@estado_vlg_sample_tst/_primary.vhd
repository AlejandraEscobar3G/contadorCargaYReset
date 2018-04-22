library verilog;
use verilog.vl_types.all;
entity contadorEstado_vlg_sample_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        clk             : in     vl_logic;
        edo_Cont        : in     vl_logic;
        Q               : in     vl_logic_vector(3 downto 0);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end contadorEstado_vlg_sample_tst;
