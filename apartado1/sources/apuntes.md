### Apuntes apartado 1

La frecuencia de tb de clk es 10ns
Dividir la señal de reloj en 6 ms // 6us para simulacion
Para la entidad de simulacion asignar CNT1 para poder ver toda la simulacion
Para el puesto 6, TREF tiene un valor de 166,67Hz
1 ciclo de reloj = 2 veces el cambio de clk , 5ns en test bench es 10 ns de periodo
Poner el valor alto de la division de la señal de reloj cuando se vaya a generar el bitstream
El valor para el absoluto deberia ser 208337500 ciclos de reloj (SOLO EN IMPLEMENTACION)
Para simulacion = 208337.5 == 208338
Periodo de refresco de cada uno de los displays => Lo de arriba calculado entre 4. Simulacion 52084. Implementacion 52084375
