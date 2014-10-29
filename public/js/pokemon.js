$(document).ready(function(){
  $("select").val('').chosen().change(function(){
    $select = $(this);
    var pokemon = $select.val();
    var $team = $("#team" + $select.data('team')).html('');
    
    if (pokemon){
      $.each(pokemon, function(){
        var id = ("000" + this).slice(-3);
        $team.append('<img src="/img/pokemon/' + id + '.png" class="pokemon" />');
      });
    }

    if ($("#team1").html() && $("#team2").html()){
      $("#fight").show();
    } else {
      $("#fight").hide();
    }
  });

  $("#fight button").click(function(){
    var data = {
      team1: $("select[data-team=1]").val(),
      team2: $("select[data-team=2]").val()
    };
    $.post('/fight', data, function(log){
      $("#result").html("<pre>" + log + "</pre>");
      $.scrollTo("#result", 100);
    });
  });
});