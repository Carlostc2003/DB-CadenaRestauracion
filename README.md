# Base de Datos - Cadena de Restauración

## Estructura del repositorio

- 00_SistemaInformacion/  
   └── [`README.md`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/00_SistemaInformacion/README.md)  

- 01_Modelos/  
   ├── [`ModeloEER.erdplus`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/01_Modelos/ModeloEER.erdplus)  
   ├── [`ModeloEER.png`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/01_Modelos/ModeloEER.png)  
   ├── [`ModeloRelacional.png`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/01_Modelos/ModeloRelacional.png)  
   └── [`README.md`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/01_Modelos/README.md)  

- 02_DiccionarioDatos/  
   └── [`README.md`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/02_DiccionarioDatos/README.md)  

- 03_SQL/  
   ├── DDL/[`script.sql`](https://raw.githubusercontent.com/Carlostc2003/DB-CadenaRestauracion/main/03_SQL/DDL/script.sql)  
   ├── DDL/[`empty_tables.sql`](https://raw.githubusercontent.com/Carlostc2003/DB-CadenaRestauracion/main/03_SQL/DDL/empty_tables.sql)  
   └── DML/[`script.sql`](https://raw.githubusercontent.com/Carlostc2003/DB-CadenaRestauracion/main/03_SQL/DML/script.sql)  

- [`LICENSE`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/LICENSE)  
- [`README.md`](https://github.com/Carlostc2003/DB-CadenaRestauracion/blob/main/README.md)  


## Descripción

Este repositorio contiene un proyecto completo de base de datos para una cadena de restauración de comida rápida. Incluye:

- **Sistema de Información:** estructura inicial y requisitos funcionales.  
- **Modelo Entidad-Relación Extendido (EER).**  
- **Modelo Relacional:** traducción del EER a una estructura apta para SQL.  
- **Diccionario de Datos:** definición de tablas, columnas, restricciones y claves.  
- **Script DDL:** creación de la base de datos en MariaDB.  
- **Script DML:** inserción de datos de ejemplo en todas las tablas.  

Se puede interactuar con el modelo EER usando **ERDPlus** ([`ModeloEER.erdplus`](01_Modelos/ModeloEER.erdplus)).

## Instalación

> Requiere una versión de mariadb estable y reciente.
1. Descarga el script DDL o ejecuta los comandos en terminal:
- Windows:
    ```powershell
    wget -OutFile "$env:USERPROFILE\script.sql" https://raw.githubusercontent.com/Carlostc2003/DB-CadenaRestauracion/main/03_Scripts/DDL/script.sql
    ```
- Linux:
    ```bash
    wget -O ~/script.sql https://raw.githubusercontent.com/Carlostc2003/DB-CadenaRestauracion/main/03_Scripts/DDL/script.sql
    ```
2. Abre la consola de MariaDB
    ```bash
    mariadb -u root -p
    ```
3. Haz que mariadb use el script DDL [script.sql](03_Scripts/DDL/script.sql)  
- Windows:
    ```sql 
    SOURCE C:\Users\username\script.sql;
    ```
- Linux:
    ```sql
    SOURCE ~/script.sql;
    ```

## Gestión en MariaDB
- Ver las restricciones de una de las tablas
    ```sql
    DESCRIBE `TABLA`;
    ```
- Ver el contenido de una de las tablas
    ```sql
    SELECT * FROM `TABLA`;
    ```
- Borrar los datos de una de las tablas
    ```sql
    SET FOREIGN_KEY_CHECKS = 0;
    TRUNCATE TABLE `TABLA`;
    SET FOREIGN_KEY_CHECKS = 1;
    ```
- Borrar una de las tablas
    ```sql
    DROP TABLE IF EXISTS `TABLA`;
    ```
- Borrar la base de datos
    ```sql
    DROP DATABASE IF EXISTS `CadenaRestauracion`;
    ```
- Cambiar los datos de las tablas
    ```sql
    UPDATE `TABLA` 
    SET `COLUMNA` = 'DATO' 
    WHERE `COLUMNA` = 'DATO';
    ```
- Cambiar nombre a las tablas
    ```sql
    RENAME TABLE `TABLA` TO `NEW_NAME`;
    ```
