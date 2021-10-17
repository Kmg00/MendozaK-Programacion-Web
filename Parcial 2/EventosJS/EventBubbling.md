
# *EVENT BUBBLING* 
_________________________

¿Que significa "Event Bubbling"?

Es un tipo de propagación de eventos donde el evento se dispara primero en el elemento de destino más interno y luego se dispara sucesivamente en los antepasados ​​del elemento de destino en la misma jerarquía de anidación hasta que alcanza el elemento DOM o el objeto de documento más externo.


___________________________
En JavaScript cuando se ejecuta un evento en un elemento del DOM, se tienen 3 fases diferentes las cuales se ejecutan en el siguiente orden:

1. Capturing phase (captura), es la fase en la que desde el nodo padre, se va descendiendo hasta el nodo objetivo, no es muy utilizada esta propiedad pero puede ser muy útil en ciertos casos
2. Target phase (objetivo), fase que se ejecuta al llegar al elemento objetivo
3. Bubbling (propagación), ultima fase, en la que el evento se propaga de vuelta al nodo padre desde el elemento objetivo.

________________

## Implementación
Todos los controladores de eventos consideran la propagación de eventos como la forma predeterminada de manejo de eventos. Pero un usuario puede seleccionar manualmente la forma de propagación especificando eso como el último parámetro en **addEventListener()** de cualquier elemento en JavaScript.

**addEventListener("type", "listener", "CaptureMode")**

* Si CaptureMode es Falso, el evento se manejará mediante la propagación de eventos.
* Si CaptureMode es True, el evento se manejará mediante la captura de eventos.
* Si un usuario no especifica ningún valor del argumento CaptureMode, se considera de forma predeterminada como propagación de eventos. La mayoría de los navegadores admiten tanto el burbujeo de eventos como la captura de eventos (excepto IE <9 y Opera <7.0, que no admiten la captura de eventos).

**var isBubblePossible = event.bubbles;**
* isBubblePossible: Verdadero, si el evento puede llegar hasta los antepasados.
* isBubblePossible: False, si el evento no puede aparecer.
_____

## Uso del Evento de Burbujeo


*Para manejar los casos en los que un evento tiene más de un controlador, se puede implementar el concepto de propagación de eventos. El uso principal de la propagación de eventos es el registro de funciones predeterminadas presentes en el programa. En los últimos tiempos, no muchos desarrolladores utilizan la captura de eventos o el burbujeo en particular. No es necesario implementar la propagación de eventos; Puede resultar complicado para los usuarios realizar un seguimiento de las acciones que se ejecutan debido a un evento.*

_________

## Evitar la propagación de Eventos
A veces es útil detener un solo desencadenante en un elemento que conduce a múltiples desencadenantes en los antepasados. JavaScript proporciona los siguientes métodos para evitar la propagación de eventos:

1. **stopPropagation():** 

Este método detiene la propagación adicional de cualquier evento en particular a sus padres, invocando solo el controlador de eventos del elemento de destino. Aunque es compatible con todos los navegadores compatibles con W3C, Internet Explorer por debajo de la versión 9 requiere el alias histórico cancelBubble, como en:
 
**event.cancelBubble = true;**
_____


Para todos los navegadores compatibles con W3C:

**event.stopPropagation();**
____

2. **stopImmediatePropagation():** 

Este método no solo detendrá la propagación adicional, sino que también detendrá la ejecución de cualquier otro controlador del evento de destino. En el DOM, el mismo evento puede tener varios controladores independientes, por lo que detener la ejecución de un controlador de eventos generalmente no afecta a los otros controladores del mismo objetivo. Pero el método stopImmediatePropagation () evita la ejecución de cualquier otro controlador del mismo objetivo.
___

Para todos los navegadores compatibles con W3C:

**event.stopImmediatePropagation ();**

Otro enfoque para detener la propagación de eventos es cancelar el evento en sí, sin embargo, esto también evita la ejecución del controlador de destino.
______

## *By Kevin Mendoza* 