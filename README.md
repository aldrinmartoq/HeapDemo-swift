# HeapDemo-swift

He reimplementado el código de Demo1, Demo2 y Demo3 de Franco. Para entender algo de qué se trata, vean este video: https://youtu.be/umLWypiF4eA

## Demo1

Foto del inicio, swift ocupa 1.4MiB de memoria. Igual encuentro que es harto.

![Inicio Demo1](https://github.com/aldrinmartoq/HeapDemo-swift/raw/master/evidencias/demo1/2016-11-07%2009.36.44%20pm.png)

Notar que el rendimiento es constante. Esto porque NO hay GC, así que no hay nada que congele tu programa y siempre funciona igual respecto a la RAM.

![84% de RAM](https://github.com/aldrinmartoq/HeapDemo-swift/raw/master/evidencias/demo1/2016-11-07%2009.39.34%20pm.png)

Sigue el mismo rendimiento, pese a que llevamos casi el 120% de la RAM.

![116% de RAM](https://github.com/aldrinmartoq/HeapDemo-swift/raw/master/evidencias/demo1/2016-11-07%2009.40.40%20pm.png)

Resumen: esta versión no tiene mucho sentido para mí, es código que agrega constantemente un buffer a una lista: siempre hace crecer la memoria. Como Java tiene un límite (-Xmx), el GC intenta limpiar lo más posible hasta morir o colapsar en un imposible… acá en Swift simplemente intenta comer toda la memoria, lo detuve cuando ya iba en el 120% de mi equipo.

## Demo2

Esta vez no pedimos memoria como locos, sino que reutilizamos la lista y vamos pidiendo liberando memoria en el ciclo infinito.

![Olas de pedir/quitar memoria](https://github.com/aldrinmartoq/HeapDemo-swift/raw/master/evidencias/demo2/2016-11-07%2009.44.20%20pm.png)


Resumen: tenemos un uso parecido a lo obtenido por Franco. Nuevamente, no tenemos una GC que nos meta ruido.

## Demo3

Este es el más bonito que me quedó, 9.1 MB estáticos sin moverse ni nada.

![¡Qué bonito!](https://github.com/aldrinmartoq/HeapDemo-swift/raw/master/evidencias/demo3/2016-11-07%2009.55.03%20pm.png)

Resumen: cero GC y un bonito uso de la memoria.


## Conclusiones

Esta versión en Swift está ocupando harto menos memoria. Además, ya que no hay GC el programa no se congela como en Java.

Un punto feo es el rendimiento, es harto más lento en comparación con java: unos 300.000 ciclos/segundo versus 1.800.000 ciclos/segundo obtenido por Java en mi máquina (al principio, después decae por el uso del GC). Traté de poner las opciones de optimización (-Ofast y -Ounchecked) y se obtienen 900.000 ciclos por segundo, es decir la mitad. Así que una cosa por otra, al parecer.
