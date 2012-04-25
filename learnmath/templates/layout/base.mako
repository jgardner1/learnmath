<%inherit file="/bootstrap/basic.mako"/>
<%!
    from webhelpers.html.tags import link_to
%>
<%def name="title()">\
% if hasattr(c, 'title'):
${c.title}
% else:
JG LearnMath
% endif
</%def>\
<%def name="brand()">JG LearnMath</%def>\
<%def name="footer()">\
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span12">
      <hr/>
    </div>
  </div>
  <div class="row-fluid">
    <div class="span6" style="text-align: left;">
    Copyright &copy; 2012 ${link_to(
      'Jonathan Gardner',
      'mailto:jgardner@jonathangardner.net')}. ALL RIGHTS RESERVED
    </div>
    <div class="span6" style="text-align: right;">
      ${link_to('Email me', 'mailto:jgardner@jonathangardner.net')} for feedback or ideas!
    </div>
  </div>
</div>
</%def>\
${next.body()}
