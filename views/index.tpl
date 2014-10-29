<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Pokemon Battle Simulator</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="/js/chosen/chosen.min.css">
	<link rel="stylesheet" href="/css/style.css">

  </head>
  <body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h1>Your team</h1>
				<select multiple data-placeholder="Choose a pokemon..." data-team="1">
					{% for id, name in pokemon %}
						<option value="{{ id }}">{{ name }}</option>
					{% endfor %}
				</select>
				<div id="team1"></div>
			</div>
			<div class="col-md-6">
				<h1>Enemy team</h1>
				<select multiple data-placeholder="Choose a pokemon..." data-team="2">
					{% for id, name in pokemon %}
						<option value="{{ id }}">{{ name }}</option>
					{% endfor %}
				</select>
				<div id="team2"></div>
			</div>
		</div>
		<div id="fight">
			<button class="btn btn-primary btn-lg"> Fight!</button>
		</div>
		<div id="result"></div>
	</div>

	<a href="https://github.com/fonse/pokemon-battle" class="hidden-xs">
  		<img class="ribbon" src="https://camo.githubusercontent.com/365986a132ccd6a44c23a9169022c0b5c890c387/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f6769746875622f726962626f6e732f666f726b6d655f72696768745f7265645f6161303030302e706e67" alt="Fork me on GitHub" data-canonical-src="https://s3.amazonaws.com/github/ribbons/forkme_right_red_aa0000.png">
  	</a>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script src="/js/chosen/chosen.jquery.min.js"></script>
    <script src="/js/scrollto.min.js"></script>
    <script src="/js/pokemon.js"></script>
  </body>
</html>