var express = require('express');
var bodyParser = require('body-parser');
var fs = require('fs');

var localKey = '/Users/student/projects/site.key';
var localCert = '/Users/student/projects/site.cert';

var options = {
	key: localKey,
	cert: localCert
}

var app = express(options);
app.set('view engine', 'jade');
app.set('views', __dirname + '/views');
app.use(express.static(__dirname + '/public'));
app.use(bodyParser());

app.get('/', function(req, res) {
	res.render('index');
});

var server = app.listen(3000, function() {
	console.log('Express server listening on port ' + server.address().port);
});
