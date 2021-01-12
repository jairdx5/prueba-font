create database dbcomercio

Create table producto(
IdProducto Varchar(25) primary key,
descripcion Varchar(250),
idProveedor int foreign key,
precio double,
disponibles int,
nombre varchar(50),
imagen varchar(50)
);

Create table proveedor(
idProveedor int primary key,
nombre Varchar(50)
);

insert into proveedor Values(1,'Microsoft');
insert into proveedor Values(2,'Autodesk');
insert into proveedor Values(3,'WMWARE');


insert into Producto Values('031c9-e47','Licencia para 365 individual',1,10.53,100,'Microsoft 365 1 año','365.png');
insert into Producto Values('0a798-3cd','Licencia para servicio en la nube',1,0.89,50,'3 meses de servicio','Azure.png');
insert into Producto Values('0cca4-4d6','Click Suscribe',1,0.89,75,'1 mes soporte 24/7','Default.png');
insert into Producto Values('11e3c-9a9','Licencia para 365 familiar',1,22.22,50,'Microsoft 365 1 año','365.png');
insert into Producto Values('14c61-739','Click Suscribe Pro',1,4.63,20,'1 año soporte 24/7','Default.png');
insert into Producto Values('001l1-004640-t585','Autocad lite',2,1175,10,'licencia pro','Autocad.jpg');
insert into Producto Values('001l1-003126-t227','Autocad standar',2,1225,20,'licencia enterprise','Autocad.jpg');
insert into Producto Values('001l1-001563-t124','Autocad enterprise',2,160,30,'licencia standar','Autocad.jpg');
insert into Producto Values('001l1-006876-t671','Autocad dev',2,1225,40,'licencia lite','Autocad.jpg');
insert into Producto Values('001l0-006286-t605','Autocad Pro',2,155,50,'licencia de desarrollador','Autocad.jpg');
insert into Producto Values('VSPP-1800-1-RENT-S','Server 1',3,0.9,11,'Server 1','Vmware.jpg');
insert into Producto Values('VSPP-3600-1-RENT-S','Server 2',3,0.78,12,'Server 2','Vmware.jpg');
insert into Producto Values('VSPP-10800-1-RENT-S','Server 3',3,0.72,13,'Server 3','Vmware.jpg');
insert into Producto Values('VSPP-18000-1-RENT-S','Server 4',3,0.66,14,'Server 4','Vmware.jpg');
insert into Producto Values('VSPP-30000-1-RENT-S','Server 5',3,0.6,15,'Server 5','Vmware.jpg');


//consulta por general 
SELECT producto.Nombre as nombrep,producto.IdProducto,producto.descripcion,producto.precio,producto.disponibles,producto.imagen,proveedor.nombre FROM `producto` INNER JOIN proveedor ON producto.idProveedor = proveedor.idProveedor

//consulta por proveedor 
SELECT producto.Nombre as nombrep,producto.IdProducto,producto.descripcion,producto.precio,producto.disponibles,producto.imagen,proveedor.nombre FROM `producto` INNER JOIN proveedor ON producto.idProveedor = proveedor.idProveedor where proveedor.idProveedor=1

//consulta por IdProducto
SELECT producto.Nombre as nombrep,producto.IdProducto,producto.descripcion,producto.precio,producto.disponibles,producto.imagen,proveedor.nombre FROM `producto` INNER JOIN proveedor ON producto.idProveedor = proveedor.idProveedor where producto.IdProducto = '001l1-004640-t585' 