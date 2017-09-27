var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database:  'dbname'
	}) ;

connection.connect(function(error){
	if(error){
		console.log('Error in db connection :' + error.stack);
		return ;
	}
	console.log('Connection was established');
});

router.get('/', function(req, res, next) {

	connection.query("select distinct eventName from logs" , function(error, rows){
	if(rows.length < 1){
		console.log('There is no data');
		
	}

	if(rows.length > 0){
		console.log(rows);
		res.json(rows);
	}
});
});

module.exports = router;
