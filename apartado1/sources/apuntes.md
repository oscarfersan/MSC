### Apuntes apartado 1

La frecuencia de tb de clk es 10ns
Dividir la señal de reloj en 6 ms // 6us para simulacion
Para la entidad de simulacion asignar CNT1 para poder ver toda la simulacion
Para el puesto 6, TREF tiene un valor de 166,67Hz
1 ciclo de reloj = 2 veces el cambio de clk , 5ns en test bench es 10 ns de periodo
Poner el valor alto de la division de la señal de reloj cuando se vaya a generar el bitstream
Calculo -> Cuantos ciclos de reloj se necesitan para alcanzar los 6 microsegundos -> 6us/10ns => 600 (6000 para implementacion)
