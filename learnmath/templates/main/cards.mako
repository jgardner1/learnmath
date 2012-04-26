<%!
    from webhelpers.html.tags import link_to
%>
<%inherit file="/layout/2col.mako"/>
<div id="problem" class="hero-unit" style="font-size: 500%; text-align: center;">
  3 + 2 = <span class="answer" style="visibility: hidden">5</span>

</div>

<div class="row">
  <div class="span4">
    <button id="show_answer" class="btn btn-primary btn-large" onclick="show_answer();"><i class="icon-eye-open icon-white"></i> Show Answer</button>
    <button id="hide_answer" class="btn" onclick="hide_answer();" style="display:none"><i class="icon-eye-close"></i> Hide Answer</button>
  </div>
  <div id="answer_buttons" class="span4" style="text-align: right; visibility:hidden;">
    <button class="btn btn-success btn-large" onclick="correct()"><i class="icon-ok icon-white"></i> Correct</button>
    <button class="btn btn-danger btn-large" onclick="wrong()"><i class="icon-remove"></i> Wrong</button>
  </div>
</div>


<script>
function show_answer() {
    $('#show_answer').hide();
    $('#hide_answer').show();
    $('.answer').css('visibility', 'visible');
    $('#answer_buttons').css('visibility', 'visible');
};

function hide_answer() {
    $('#show_answer').show();
    $('#hide_answer').hide();
    $('.answer').css('visibility', 'hidden');
    $('#answer_buttons').css('visibility', 'hidden');
};

function correct() {
  gen_question();
}

function wrong() {
  gen_question();
}

function randrange(a, b) {
  if (b == null) {
    b = a;
    a = 0;
  }

  return Math.floor(a + Math.random()*(b-a));
}

function gen_question() {
  var a = randrange(1, 11),
      b = randrange(1, 11),
      sum = a + b;

  $('#problem').html(a+' + '+b+' = <span class="answer">'+sum+'</span>');
  hide_answer();
}


</script>
