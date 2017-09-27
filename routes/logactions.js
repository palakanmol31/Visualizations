var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
	var current_username = req.session.username ; 
  res.render('logactions', { title: current_username } );
});

module.exports = router;
