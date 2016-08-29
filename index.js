require('coffee-script/register')
var fs = require('fs')
var pokemon = require('pokemon-battle');

var express = require('express');
var bodyParser = require('body-parser')
var app = express();

app.set('port', (process.env.PORT || 5000))
app.use(express.static(__dirname + '/public'))
app.use(bodyParser.urlencoded({ extended: true })); 

app.get('/', function(request, response) {
  var names = require(__dirname + '/data/names.json');

  var swig  = require('swig');
  var template = swig.compileFile(__dirname + '/views/index.tpl');
  var output = template({
      pokemon: names
  });

  response.send(output);
})

app.post('/fight', function(request, response) {
  response.send(pokemon.battle(request.body.team1, request.body.team2));
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})
