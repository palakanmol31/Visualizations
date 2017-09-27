	var express = require('express');
	var router = express.Router();


	var mysql = require('mysql');
	/*var connection = mysql.createConnection({
	/!*	host: 'localhost',
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
	router.get('/', function(req, res, next) {
		res.sendFile(__dirname + '/users.html');
	});


	/* GET users listing. */
	router.get('/user_history/:username', function(req, res, next) {

        mysql_pool.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(' Error getting mysql_pool connection: ' + err);
                throw err;
            }

            username = req.params.username;
            var current_username = req.session.username;


            connection.query("select date from login_history where username = '" + current_username + "' order by date DESC LIMIT 10; ", function (error, rows) {
                if (rows.length < 1) {
                    console.log('There is no data');

                }

                if (rows.length > 0) {
                    res.json(rows);
                }
                connection.release();
            });
        });
    });

	router.get('/user_activity/:username', function(req, res, next) {
        mysql_pool.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(' Error getting mysql_pool connection: ' + err);
                throw err;
            }

            username = req.params.username;
            var current_username = req.session.username;

            var que = "select distinct(html), count(*) as count from logs where name = '" + current_username + "' and html != '' and html != '×' and eventName = 'post-tag'  group by html order by count DESC LIMIT 5;";
            connection.query(que, function (error, rows) {
                if (rows.length < 1) {
                    console.log('There is no data');

                }
                if (rows.length > 0) {
                    res.json(rows);
                }
                connection.release();
            });
        });
    });

	router.get('/most_visited_links/:username', function(req, res, next) {

        mysql_pool.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(' Error getting mysql_pool connection: ' + err);
                throw err;
            }
            username = req.params.username;
            var current_username = req.session.username;

            var que = "select distinct(url), count(*) as count from logs where name = '" + current_username + "' group by url order by count DESC LIMIT 5;"

            connection.query(que, function (error, rows) {
                if (rows.length < 1) {
                    console.log('There is no data');

                }
                if (rows.length > 0) {
                    res.json(rows);
                }
                connection.release();
            });
        });
    });

	router.get('/active_date/:username', function(req, res, next) {

        mysql_pool.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(' Error getting mysql_pool connection: ' + err);
                throw err;
            }
            username = req.params.username;
            var current_username = req.session.username;

            var que = "select distinct(DATE(timestamp)) as date, count(*) as count from logs where name = '" + current_username + "' group by DATE(timestamp) order by count DESC LIMIT 3;"
            connection.query(que, function (error, rows) {
                if (rows.length < 1) {
                    console.log('There is no data');

                }
                if (rows.length > 0) {
                    res.json(rows);
                }
                connection.release();
            });
        });
    });

	router.get('/active_time/:username', function(req, res, next) {
        mysql_pool.getConnection(function (err, connection) {
            if (err) {
                connection.release();
                console.log(' Error getting mysql_pool connection: ' + err);
                throw err;
            }

            username = req.params.username;
            var current_username = req.session.username;

            var que = "SELECT distinct(EXTRACT(HOUR FROM timestamp)) as hour, count(*) as count FROM logs where name = '" + current_username + "' group by EXTRACT(HOUR FROM timestamp) order by count DESC limit 1;"
            connection.query(que, function (error, rows) {
                if (rows.length < 1) {
                    console.log('There is no data');

                }
                if (rows.length > 0) {
                    res.json(rows);
                }
                connection.release();
            });
        });
    });
	



	module.exports = router;
