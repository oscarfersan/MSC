### 2023-02-06 -> Tutorial Vivado

#### Señal Reloj de Placa = 100MHz || Periodo = 10ns

- Dividir señal de reloj -> Prescaler
- Contador Modulo n -> Contador que cuenta de 0 a n-1
- **Por defecto se usa el estandar del 93, hay que cambiar al de 2008 con la llamada Set Type encima del archivo**
- Sistema secuencial -> Cuando hay detección de flanco

#### Generar estimulos(shifter 16)

- Periodo de clk -> 5ns alto 5ns bajo
- Periodo de rst -> 123ns
- CE siempre activo, pero pasa a 0 en x momento y vuelve a subir
- Polarity y Direction, poner estimulos para poder ver todas las combinaciones con un periodo de T1
  -- Para T1, si hay 5ns alto y bajo (10 ns en total), para probar todos las probabilidades T1> 16 numeros \* 10ns, que es 160 ns. Por ejemplo usar 0.2us(micro segundos)
- Hacer coincidir las señales con la bajada de flanco, para que en la siguiente subida tenga los valores
- Waveform de simulacion **temporal** -> Solo los puertos
- Tiempo de propagacion(retardo) -> Señal de subida de reloj hasta siguiente cambio
