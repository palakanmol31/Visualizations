var express = require('express');
var router = express.Router();

router.post('/', function(req, res) {
	//req.session = null ; 
	req.session.username = "";
	req.session.destroy(); 
	res.redirect('/index');

});
module.exports = router;