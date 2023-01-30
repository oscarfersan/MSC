### Calculo de frecuencias dado el clk y una frecuencia de refresco pedida

## Video 1

- La frecuencia de reloj de basys 3 es de 100MHz (10ns)
- Queremos refrescar los leds con una frecuencia de 4Hz (0.25s)
- Hay que tener en cuenta la anchura de la señal de reloj, cada bloque son 10ns
- La variable de simulacion del prescaler se debe de multiplicar por esta anchura para tener la frecuencia
- Si se usa por ejemplo 25, en simulacion habria un periodo de 25\*10 = **25ns**
