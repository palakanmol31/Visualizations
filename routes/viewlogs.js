var express = require('express');
var router = express.Router();

var mysql = require('mysql');
/*var connection = mysql.createConnection({
	/!*host: 'localhost',
	user: 'root',
	password: '',
	database:  'dbname'
	*!/
    host: 'us-cdbr-iron-east-05.cleardb.net',
    user: 'be697a7df09361',
    password: '4c36d2e7',
    database: 'heroku_517eb00bb3dfef9'
	}) ;

connection.connect(function(error){
	if(error){
		console.log('Error in db connection :' + error.stack);
		return ;
	}
	console.log('Connection was established');
});*/

var mysql_pool = mysql.createPool({
    connectionLimit: 200,
    host: 'us-cdbr-iron-east-05.cleardb.net',
    user: 'be697a7df09361',
    password: '4c36d2e7',
    database: 'heroku_517eb00bb3dfef9'
});

router.get('/', function(req, res) {

    mysql_pool.getConnection(function (err, connection) {
        if (err) {
            connection.release();
            console.log(' Error getting mysql_pool connection: ' + err);
            throw err;
        }
        var user_name = req.session.username;

        connection.query("SELECT * FROM logs where name = '" + user_name + "' order by timestamp desc limit 20;", function (error, rows) {
            if (rows.length < 1) {
                console.log('There is no data');

            }

            if (rows.length > 0) {
                res.render('viewlogs', {title: user_name, data: rows});
            }
            connection.release();
        });
    });
});
//connection.end ;
module.exports = router;