### Preguntas test bench

proceso -> Bucle infinito que genera una señal F_OUT_i con una amplitud de 10ns y un periodo T. Para alcanzar este periodo T se hace el wait for de T-10, que es el periodo de nivel bajo. Calculo de este periodo -> T = Th+Tl, donde Th son 10ns(amplitud señal) y T la señal definida en la presentacion, (en mi caso **x** ns).

Linea F<= 1ms(1000000ns)/T. Calculo de frecuencia. Se usa para visualizar. Calculo de numero de flancos

Procedimiento de medida. Se abre una ventana y son los procesos de esa ventana lo que mido. Tvi=Tpa/N

Valores de frecuencia->
Tpa = 1s impl, 1ms simulacion
Tvi = Tpa / Nº de flancos a medir en esa ventana

Aplicando Tvi -> 20ns, N -> 50000 flancos a medir
