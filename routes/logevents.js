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

router.post('/', function(req, res) {
	var html = req.body.eventInnerHTML ;
	var url = req.body.eventbaseURI ;
	var eventName = req.body.eventClassList ;
	var eventType = req.body.eventType ; 
	var username = req.body.currentUser ; 
	connection.query("insert into logs ( name, eventName, eventType , url, html, timestamp) values ( '"+ username + "' , '"+ eventName + "' , '"+ eventType+ "' ,  '"+ url+ "', '"+ html+ "' , CURRENT_TIMESTAMP )");
	res.send(200);
});
connection.end ; 
module.exports = router;