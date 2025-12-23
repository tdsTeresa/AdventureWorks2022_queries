
<h2>📚 Descripción general:</h2>
<br>
Esta actividad consistió en la formulación de varias consultas a la base de datos AdventureWorks2022, identificando el comportamiento de cada una de las cláusulas Group by, Having, Over, Partition by y funciones 
Row number, Rank, Dense Rank entre otros conceptos.<br><br>
<h2>⚙️Tecnologías: </h2>
<br>
    • SQL Server <br>
<br>

<h2>🖇️ Fuente: </h2><br>
AdventureWorks2022 es una muestra de base de datos disponible para descargar e instalar en Microsoft SQL Server.
<br>
<br><br>
<h2>Consultas realizadas: </h2>
<br>
▫️Cláusula group by: Agrupa la cantidad y el total vendidos por ID de producto.<br><br>

[![groupby](images1/Groupby.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Groupby.png)
<br><br>
▫️Clásula having: Aplica un filtro sobre la función de agregación suma (Total de órdenes > 50). <br><br>
[![having](images1/Having.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Having.png)
<br><br>
▫️Cláusula over y partition by: Devuelve el monto por ID de orden.<br><br>
[![over_partitionby](images1/Over_PartitionBy.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Over_PartitionBy.png)
<br><br>
▫️Función row_number: Asigna un número único a cada fila dentro de su partición (por ID de orden). <br><br> 
[![row_number](images1/RowNumber.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/RowNumber.png)<br><br>
▫️Función rank: Clasifica datos a partir del total por órden.<br><br>
[![rank](images1/Rank.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Rank.png)
<br><br>
▫️Función DenseRank: Clasifica datos a partir del total por órden sin dejar espacios.<br><br>
[![dense_rank](images1/DenseRank.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/DenseRank.png)
<br><br>
▫️Cláusula having.<br><br>
[![having2](images1/Having2.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Having2.png)
<br><br>
▫️Subconsulta: Datos de productos que han sido ordenados o vendidos.  <br><br>
[![subquery](images1/Subconsulta.png)](https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Subconsulta.png)<br><br>
▫️Inner join: Concatenación del departamento de los empleados mediante conexiones de varios registros en las tablas.  <br><br>
[![inner_join](images1/Rank.png)]([https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Rank.png)<br><br>
▫️CTE: Almacena de manera temporal el resultado de una consulta.   <br><br>
[![cte](images1/CTE.png)]([https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/CTE.png)<br><br>
▫️isnull: Establece 'No disponible' en los registros sin un número de compra.  <br><br>
[![isnull](images1/IsNull.png)]([https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/IsNull.png)<br><br>
▫️Substring: Devuelve un rango de caracteres de ciertas columnas.  <br><br>
[![substring](images1/Substring.png)]([https://github.com/tdsTeresa/AdventureWorks2022_queries/blob/main/images1/Substring.png)
<br><br>



