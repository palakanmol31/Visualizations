var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'us-cdbr-iron-east-05.cleardb.net',
    user: 'be697a7df09361',
    password: '4c36d2e7',
	database:  'heroku_517eb00bb3dfef9'
	}) ;

connection.connect(function(error){
	if(error){
		console.log('Error in db connection :' + error.stack);
		return ;
	}
	console.log('Connection was established');
});
router.get('/', function(req, res, next) {

	var que = "select * from logs;";
	connection.query( que, function(error, rows){
		console.log(que); 
	if(rows.length < 1){
		console.log('There is no data');
		
	}

	if(rows.length > 0){
		//console.log(rows);
		res.json(rows);
	}
});
});

module.exports = router;
