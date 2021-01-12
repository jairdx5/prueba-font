const mysql = require ('mysql');

module.exports = () => {
    return mysql.createConnection({
        host:'localhost',
        user:'jairE',
        password:'q27s12fd',
        database:'dbcomercio',
    });
}