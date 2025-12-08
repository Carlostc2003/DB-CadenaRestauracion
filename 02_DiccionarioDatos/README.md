# Diccionario de Datos

## PAIS
| Columna      | Tipo de Datos | Restriccion | Descripcion              |
|-------------|---------------|------------|-------------------------|
| `codigo_iso`  | CHAR(2)       | PK         | Identificador de pais   |
| `nombre`      | VARCHAR(64)   |            | Nombre del pais         |
| `moneda`      | CHAR(3)       |            | Moneda del pais         |
| `poblacion`   | INT           |            | Cantidad de poblacion   |

## PROVEEDOR
| Columna | Tipo de Datos | Restriccion | Descripcion            |
|---------|---------------|------------|------------------------|
| `nif`     | CHAR(9)       | PK         | Identificador del proveedor |
| `nombre`  | VARCHAR(64)   |            | Nombre del proveedor       |

## TELEFONO
| Columna      | Tipo de Datos | Restriccion | Descripcion               |
|-------------|---------------|------------|---------------------------|
| `numero`      | VARCHAR(32)   | PK         | Identificador del telefono |
| `nifProveedor`| CHAR(9)       | FK         | Proveedor con telefono    |

## PROVEER
| Columna      | Tipo de Datos | Restriccion | Descripcion                 |
|-------------|---------------|------------|-----------------------------|
| `isoPais`     | CHAR(2)       | PK, FK     | Se provee a un pais        |
| `nifProveedor`| CHAR(9)       | PK, FK     | Se provee por un proveedor |

## RECETA
| Columna    | Tipo de Datos | Restriccion | Descripcion          |
|-----------|---------------|------------|--------------------|
| `id_receta` | INT           | PK         | Identificador receta |
| `nombre`    | VARCHAR(64)   |            | Nombre de la receta  |

## USAR
| Columna   | Tipo de Datos | Restriccion | Descripcion             |
|----------|---------------|------------|-------------------------|
| `idReceta` | INT           | PK, FK     | Receta que es usada    |
| `isoPais`  | CHAR(2)       | PK, FK     | Pais que usa la receta |

## CLIENTE_FIDELIZADO
| Columna          | Tipo de Datos | Restriccion | Descripcion           |
|-----------------|---------------|------------|---------------------|
| `dni`             | CHAR(9)       | PK         | Identificador cliente |
| `fecha_nacimiento`| DATE          |            | Fecha de nacimiento   |
| `nombre`          | VARCHAR(128)  |            | Nombre del cliente    |

## POSEER
| Columna     | Tipo de Datos | Restriccion | Descripcion            |
|------------|---------------|------------|----------------------|
| `dniCliente` | CHAR(9)       | PK, FK     | Cliente que tiene pais |
| `isoPais`    | CHAR(2)       | PK, FK     | Pais del cliente       |

## LOCAL
| Columna       | Tipo de Datos | Restriccion | Descripcion        |
|--------------|---------------|------------|------------------|
| `id_local`     | INT           | PK         | Identificador local |
| `nombre`       | VARCHAR(128)  |            | Nombre del local    |
| `ciudad`       | VARCHAR(64)   |            | Ciudad del local    |
| `calle`        | VARCHAR(64)   |            | Calle del local     |
| `numero`       | VARCHAR(8)    |            | Numero del local    |
| `codigo_postal`| CHAR(5)       |            | Codigo postal       |

## ESTAR
| Columna  | Tipo de Datos | Restriccion | Descripcion              |
|----------|---------------|------------|-------------------------|
| `idLocal`  | INT           | PK, FK     | Local que esta en pais   |
| `isoPais`  | CHAR(2)       | PK, FK     | Pais del local           |

## PEDIDO
| Columna       | Tipo de Datos | Restriccion | Descripcion            |
|---------------|---------------|------------|----------------------|
| `numero_pedido` | INT           | PK         | Identificador pedido  |
| `idLocal`       | INT           | PK, FK     | Local del pedido      |
| `fecha`         | DATE          |            | Fecha del pedido      |
| `nombre_cliente`| VARCHAR(128)  |            | Nombre del cliente    |
| `dniCliente`    | CHAR(9)       | FK         | Cliente asociado      |

## TRABAJADOR
| Columna  | Tipo de Datos | Restriccion | Descripcion           |
|----------|---------------|------------|---------------------|
| `dni`      | CHAR(9)       | PK         | Identificador empleado |
| `idLocal`  | INT           | FK         | Local donde trabaja     |
| `dniCliente`  | CHAR(9)           | FK         | Trabajador que es cliente fidelizado     |
| `nombre`   | VARCHAR(128)  |            | Nombre del trabajador   |

## LIMPIEZA
| Columna       | Tipo de Datos | Restriccion | Descripcion             |
|---------------|---------------|------------|-----------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Identificador limpieza |

## LIMPIAR
| Columna       | Tipo de Datos | Restriccion | Descripcion               |
|---------------|---------------|------------|-------------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Trabajador que limpia    |
| `idLocal`       | INT           | PK, FK     | Local que es limpiado    |

## COCINERO
| Columna       | Tipo de Datos | Restriccion | Descripcion             |
|---------------|---------------|------------|-----------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Identificador cocinero |

## REALIZAR
| Columna       | Tipo de Datos | Restriccion | Descripcion               |
|---------------|---------------|------------|-------------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Trabajador que cocina    |
| `numPedido`       | INT           | PK, FK     | Pedido que se ha realizado    |
| `idLocal`       | INT           | PK, FK     | Local desde que se ha realizado    |
| `fecha`       | DATETIME           | PK     | Fecha del pedido realizado   |

## CAJERO
| Columna       | Tipo de Datos | Restriccion | Descripcion             |
|---------------|---------------|------------|-----------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Identificador cajero |

## ATENDER
| Columna       | Tipo de Datos | Restriccion | Descripcion               |
|---------------|---------------|------------|-------------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Trabajador que atiende pedidos    |
| `numPedido`       | INT           | PK, FK     | Pedido que se ha atendido    |
| `idLocal`       | INT           | PK, FK     | Local desde que se ha atendido    |
| `fecha`       | DATETIME           | PK     | Fecha del pedido atendido   |

## ENCARGADO
| Columna       | Tipo de Datos | Restriccion | Descripcion               |
|---------------|---------------|------------|-------------------------|
| `dniTrabajador` | CHAR(9)       | PK, FK     | Identificador encargado  |

## TRABAJO
| Columna       | Tipo de Datos | Restriccion   | Descripcion           |
|---------------|---------------|--------------|---------------------|
| `idLocal`       | INT           | PK, FK, VNN  | Local donde trabaja  |
| `dniTrabajador` | CHAR(9)       | PK, FK, VNN  | Encargado que trabaja|
| `fecha`         | DATE          |              | Fecha del trabajo    |

## INCIDENCIA
| Columna      | Tipo de Datos   | Restriccion | Descripcion           |
|-------------|----------------|------------|---------------------|
| `id_incidencia`| INT            | PK         | Identificador incidencia |
| `descripcion` | VARCHAR(1024)   |            | Descripcion incidencia |

## REGISTRAR
| Columna       | Tipo de Datos | Restriccion | Descripcion                   |
|---------------|---------------|------------|-------------------------------|
| `idIncidencia`  | INT           | PK, FK     | Incidencia producida          |
| `dniTrabajador` | CHAR(9)       | PK, FK     | Encargado que registra        |
| `idLocal`       | INT           | PK, FK     | Local de la incidencia        |

## INGREDIENTE
| Columna   | Tipo de Datos | Restriccion | Descripcion             |
|----------|---------------|------------|-----------------------|
| `nombre`   | INT           | PK         | Identificador ingrediente |
| `idReceta` | INT           | FK         | Receta del ingrediente    |
