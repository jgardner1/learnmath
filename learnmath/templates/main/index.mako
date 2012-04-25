<%!
    from webhelpers.html.tags import link_to
%>
<%inherit file="/layout/2col.mako"/>
<div class="hero-unit">
  <h1>JG LearnMath</h1>

  <p>This is a website I built to help my kids master math. It is intended to
  work for K-college. It works like a flashcard system except most of the
  problems are randomly generated based on a template. I hope it can be the
  basis of a future programmable learning interface.</p>

  ${link_to('Enter Facts', url('/fact/create'), class_='btn btn-primary')}
</div>
