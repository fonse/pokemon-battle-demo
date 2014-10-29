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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script src="/js/chosen/chosen.jquery.min.js"></script>
    <script src="/js/scrollto.min.js"></script>
    <script src="/js/pokemon.js"></script>
  </body>
</html>