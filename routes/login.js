var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var connection = mysql.createConnection({
    connectionLimit: 200,
    host: 'us-cdbr-iron-east-05.cleardb.net',
    user: 'be697a7df09361',
    password: '4c36d2e7',
    database: 'dbname'
	}) ;

connection.connect(function(error){
	if(error){
		console.log('Error in db connection :' + error.stack);
		return ;
	}
	console.log('Connection was established');
});

/* Login details */
router.post('/', function(req, res) {
	var user_name =req.body.username;
	var password =req.body.password;
	console.log("User name = "+user_name+", password is "+password);

	connection.query("SELECT * FROM user_details where username = '" +user_name + "' and password = '"  + password + "';" , function(error, rows){
	if(rows.length < 1){
		console.log('There is no data');
		
	}

	if(rows.length > 0){
		//console.log(rows[0]);
		console.log("Login should be successful now");

		req.session.username = req.body.username;
		res.cookie('current_user' , req.body.username) ;
		connection.query("insert into login_history(username, date) values ( '"+ req.session.username + "' ,  CURRENT_TIMESTAMP )"); 
		res.redirect('/users');
	}
});
});
connection.end ; 
module.exports = router;