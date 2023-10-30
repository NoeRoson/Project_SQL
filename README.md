# Project_SQL

![](https://github.com/NoeRoson/Project_SQL/blob/main/img/videoclub.png)


## Introduction

El dueño de un antiguo videoclub ha tomado la decisión de reabrirlo y, para ello, necesita limpiar los registros de los que disponía para construir una nueva base de datos a partir de los mismos. Proporciona siete archivos .csv sobre los que, en primer lugar, se llevará a cabo la limpieza con Python para, seguidamente, construir la base de datos con MySQL Workbench y lanzar una serie de queries.


## Next steps

### 1. Limpieza de datos con Pandas: 

Tras explorar cada archivo csv se realiza de forma generalizada limpieza de nulos y duplicados, transformación de columnas, eliminación de aquellas con valores idénticos y reordenación de columnas. También se crean nuevas columnas para conectar unas tablas con otras en la exportación a SQL.

Para ver el proceso de limpieza con detalle pulsa [aquí](http://localhost:8888/notebooks/Ironhack/Project_SQL/src/1.1.%20Data_cleaning.ipynb)


### 2. Creación de la base de datos y la ERD: 

Exportamos cada archivo .csv limpio a MySQL Workbench dentro de una nueva base de datos llamada Videocllub. Posteriormente, se realiza el diseño del diagrama de entidad-relación, donde se pueden observar las relaciones entre las diferentes tablas y las foreign keys que conectan unas a otras. 

Para acceder al esquema pulsa [aquí](http://localhost:8888/view/Ironhack/Project_SQL/img/schemaSQL.png) 

Para acceder al código del esquema pulsa [aquí](http://localhost:8888/edit/Ironhack/Project_SQL/src/1.2.%20SQL_Schema.sql)


### 3. Queries:

- ¿Cuáles son las cinco películas que tienen mayor duración?

- ¿Cuál es la categoría de película que más se alquila?

- ¿Cuáles son los clientes que más películas han alquilado?

- ¿Cuál es la duración promedio de los alquileres?

- ¿Cuáles son las películas más alquiladas de la actriz Grace Mostel?

- ¿Qué películas de Joe Swank incluyen comentarios?

Si quieres ver con detalle las queries lanzadas, pulsa [aquí](http://localhost:8888/edit/Ironhack/Project_SQL/src/1.3.%20Bonus_QUERY.sql#)

Si quieres visualizar el resultado de cada query, pulsa [aquí](http://localhost:8888/tree/Ironhack/Project_SQL/img)


## Resources:

- [Pandas](pandas.pydata.org)

- [MySQL Workbench](https://www.mysql.com/products/workbench/)

