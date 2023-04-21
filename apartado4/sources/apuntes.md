Data Set-Up Time -> Tiempo que va a tardar el dato en estar "estable"
Periodo SCLK 40 ns
Cuando el contador llegue a valor máximo me paro
Para generar los 16 bits concatena con 4 ceros a la izquierda (0000XX)

Estados fsm-> Reposo, Q1, Q2, Q3, Q4. SCLK es 1 en Q2 y Q3

TEST_BENCH
Comparar v con v_out
Constante T_DOUT =
40ns por bit-> 640 ns
