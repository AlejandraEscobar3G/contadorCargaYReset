onerror {quit -f}
vlib work
vlog -work work ContadorEstados.vo
vlog -work work ContadorEstados.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.contadorEstado_vlg_vec_tst
vcd file -direction ContadorEstados.msim.vcd
vcd add -internal contadorEstado_vlg_vec_tst/*
vcd add -internal contadorEstado_vlg_vec_tst/i1/*
add wave /*
run -all
