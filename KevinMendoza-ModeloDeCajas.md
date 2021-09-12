# MODELO DE CAJAS

¿Que es el **Modelo de Cajas**?

El modelo de cajas o "box model" es seguramente la característica más importante del lenguaje de hojas de estilos CSS, ya que condiciona el diseño de todas las páginas web. El modelo de cajas es el comportamiento de CSS que hace que todos los elementos de las páginas se representen mediante cajas rectangulares.

 Las partes que componen cada caja y su orden de visualización desde el punto de vista del usuario son las siguientes:

 1. Contenido(content): se trata del contenido HTML del elemento (palabras de un párrafo, una imagen, el texto de una lista de elementos, etc.
2. Relleno (padding): espacio libre opcional existente entre el contenido y el borde.
3. Borde (border): línea que encierra completamente el contenido y su relleno.
4. Imagen de Fondo (background image): imagen que se muestra por detrás del contenido y el espacio de relleno
5. Color de Fondo (background color): color que se muestra por detrás del contenido y el espacio de relleno.
6. Margen (margin): separación opcional existente entre la caja y el resto de cajas adyacentes.


El relleno y el margen son transparentes, por lo que es el espacio ocupado por el relleno se muestra el color o imagen de fondo (si están definidos) y en el espacio ocupado por el margen se muestra el color o imagen de fondo de su elemento padre (si están definidos). Si ningún elemento padre tiene definido un color o imagen de fondo, se muestra el color o imagen de fondo de la propia página (si están definidos).

Si una caja define tanto un color como una imagen de fondo, la imagen tiene más prioridad y es la que se visualiza. No obstante, si la imagen de fondo no cubre totalmente la caja del elemento o si la imagen tiene zonas trasnparentes, también se visualiza el color de fondo. Combinando imagenes transparentes y colores de fondo se pueden lograr efectos gráficos muy interesantes.


# Altura, Margen, Relleno y Bordes

1. **Altura y Anchura**:
Las propiedades ***CSS*** que controlan la altura de las cajas y también su anchura se denomina width y heigth. La propiedad width no admite valores negativos y los valores en porcentaje se calculan a partir de la anchura de su elemento padre. El valor inherit indica que la anchura del elemento se hereda de su elemento padre

2. **Margen y Relleno**:
***CSS*** define cuatro propiedades para controlar cada uno de los márgenes horizontales y verticales de un elemento(margin-top, margin-right, margin-bottom, margin-left). Cada una de las propiedades establece la separación entre el borde lateral de la caja y el resto de cajas adyacentes, las unidades más utilizadas para indicar los márgenes de un elemento son los píxeles , los em y los porcentajes. La propiedad que permite definir de forma simultanea los cuatro márgenes se denomina **margin**.

3. **Bordes**:
**CSS** permite modificar el aspecto de cada uno de los cuatro bordes de la caja de un elemento. Para cada borde se puede establecer su anchura o grosor, su color y su estilo, por lo que en total CSS define 20 propiedades relacionadas con los bordes.

La anchura de los bordes se controla con las cuatro propiedades siguientes (border-top-with, border-right-width, border-bottom-width, border-left-width), El color de los bordes se controla con otras cuatro propiedades (border-top-color, border-right-color, border-bottom-color, border-left-color)y el estilo (border-top-style, border-right-style, border-bottom-style, border-left-style).

