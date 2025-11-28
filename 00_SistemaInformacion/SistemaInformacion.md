# Cadena de Restauración KFC

La cadena de restauración cuenta con varios locales distribuidos por muchos países. Cada país cuenta con muchos locales,  
en los cuales, de cada país se quiere almacenar las recetas que se ofrecen, su nombre, moneda, población y código ISO.  

De cada local, se tiene que saber su dirección completa, el código de la cadena del local y el nombre del local,  
el cual puede ser que un local no tenga un nombre definido.  

Cada local cuenta con varios trabajadores, entre ellos hay trabajadores de limpieza (se debe saber los locales que limpia),  
cocina (se necesitará saber la cantidad de pedidos realizados), cajero (que se contabilizará la cantidad de pedidos atendidos) además de un encargado por cada local,  
en los que se guardan su dni y su nombre. Cada trabajador solo puede dedicarse a una labor y el encargado trabaja dirigiendo varios locales.  

Los encargados deben registrar las incidencias ocasionadas durante su trabajo.  
Las incidencias tienen un código de identificación y una descripción, y se sabe la fecha de las veces que va el encargado a trabajar.  

La cadena de restauración cuenta con clientes fidelizados para todos los locales de ese país, además,  
los trabajadores pueden ser clientes fidelizados, de los que se quiere guardar su fecha de nacimiento, 
su edad sabiendo su fecha de nacimiento, nombre y dni.  

Cada país tiene un proveedor para todos sus locales y cada país usa unas recetas concretas que pueden ser reutilizadas para otros países,  
por lo que guardan una id, sus ingredientes y su nombre. De los proveedores se sabe el nif, nombre y los teléfonos.  

Los clientes, que pueden ser clientes no fidelizados y clientes fidelizados, pueden hacer pedidos en un local a la vez,  
los pedidos se identifican con un número que puede repetirse en otros locales, pero se sabe el nombre de quien lo pidió,  
la fecha del pedido y si fue de un cliente fidelizado.
