<%!
    from webhelpers.html.tags import link_to
%>
<%inherit file="/layout/base.mako"/>
<%def name="sidebar()">
<div class="container-fluid">
  ${link_to('Create Fact', url(controller='fact', action='create'),
    class_='btn btn-primary')}
</div>

<div class="container-fluid">
<h5>Recent Facts</h5>


</div>

</%def>
<div class="container-fluid">
  <div class="row-fluid">
    <div class="span9">
${next.body()}
    </div>
    <div class="span3">
${self.sidebar()}
    </div>
  </div>
</div>
