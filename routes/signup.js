var express = require('express');
var router = express.Router();

var mysql = require('mysql');
var connection = mysql.createConnection({
	/*host: 'localhost',
	user: 'root',
	password: '',
	database:  'dbname'*/
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
});

/* SignUp details */
router.post('/', function(req, res) {
	var result = "";
	var email = req.body.email;
	var username =req.body.user;
	var password =req.body.pass;
	

	connection.query("SELECT * FROM user_details where username = '" +username + "';" , function(error, rows){
	if(rows.length < 1){
		connection.query("insert into user_details (email, username, password) values ( '"+ email + "' , '"+ username + "' , '"+ password+ "' ) ");
		console.log("Email and username= "+email+" "+username+", password is "+password);
		result = "Successful Sign Up. Please try logging in."
		res.render('index' ,  { result : result}) ;
	}

	if(rows.length > 0){
		result = "User already exists. Please try logging in."
		res.render('index' ,  { result : result}) ;
	}
	
});
});
connection.end ; 
module.exports = router;