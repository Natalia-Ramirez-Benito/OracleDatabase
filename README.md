# OracleDatabase
Ejercicios para practicar con Oracle Database.
El objetivo del siguiente ejercicio es guardar información sobre los animales que tenemos en un pequeño zoo en una base de datos Oracle Database.
<ol>
  <li>Desde una conexión con el usuario SYSTEM, crea un usuario llamado REINO_ANIMAL. Crea una nueva conexión llamada CONEXION PARA REINO_ANIMAL.</li>

  <li>Crea un tipo objeto llamado tFamilia con los atributos idFamilia, familia. No será necesario que cuente con ningún método, por lo tanto, no tendrá TYPE BODY asociado.</li>

  <li>Crea una tabla llamada FAMILIA de objetos tFamilia. No olvides definir idFamilia como Primary Key.</li>

  <li>Si todo ha ido bien deberías poder ejecutar estas tres sentencias:</li>
    <ul>
      <li>insert into familia values (1, 'Aves');</li>
      <li>insert into familia values (2, 'Mamíferos');</li>
      <li>insert into familia values (3, 'Peces');</li>
    </ul>
  
  <li>Crea un tipo colección llamado tNombres con una longitud máxima de 20 elementos. Cada uno de los elementos será de tipo VARCHAR(50).</li>

  <li>Crea un tipo objeto llamado tAnimal con los siguientes atributos: idAnimal, idFamilia, Animal, nombres (de tipo tNombres). Añade un MEMBER FUNCTION llamado ejemplares con una cadena de tipo “Hay 3 animales de la especie Cigüeña Blanca”. El número lo sacará de la longitud de la colección nombres y la especie será el valor del atributo Animal.</li>

  <li>Crea una tabla llamada Animal donde cada fila será un objeto de tipo tAnimal.</li>

  <li>Declara el atributo idAnimal cómo Primary Key y el atributo idFamilia como Foreign Key que hace referencia a la tabla Familia.</li>

  <li>Utiliza las sentencias INSERT INTO necesarias para añadir las siguientes filas:</li>
  <ul>
    <li>Tres aves:</li>
    <ul>
      <li>Garza Real (hay 2 con los nombres Calíope e Izaro).</li>
      <li>Cigüeña Blanca (hay 3 con los nombres Perica, Clara y Miranda).</li>
      <li>Gorrión (hay 7 con los nombres coco, roco, loco, peco y rico).</li>
    </ul>
    <li>Tres mamíferos:</li>
    <ul>
      <li>Zorro (hay 2 con los nombres Lucas y Mario).</li>
      <li>Lobo (hay 2 con los nombres Pedro y Pablo).</li>
      <li>Ciervo (hay 4 con los nombres Bravo, Listo, Rojo y Astuto).</li>
    </ul>
    <li>Tres peces (estos te inventas los nombres):</li>
    <ul>
      <li>Pez globo </li>
      <li>Pez payaso</li>
      <li>Ángel llama</li>
    </ul>
  </ul>
<li>Ejecuta una SELECT para obtener un listado de animales junto a la familia a la que pertenece cada uno y una cadena que indique él número de ejemplares que hay invocando a la función.</li>
</ol>
