const dbConnection = require('../../config/dbConnection');
const txt = require('../../public/scripts/codigo');

module.exports = app => {
    const connection = dbConnection();
    app.get('/', (req,res) => {
        connection.query('SELECT producto.Nombre as nombrep,producto.IdProducto,producto.descripcion,producto.precio,producto.disponibles,producto.imagen,proveedor.nombre FROM `producto` INNER JOIN proveedor ON producto.idProveedor = proveedor.idProveedor',(err,result)=>{
           console.log(txt);
            res.render('Productos/main.ejs',{
                productos: result
            });
        });
    });
}

