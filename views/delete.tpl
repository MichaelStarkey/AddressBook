% include('header.tpl')
  <div id="main">
    <h2>Are you sure you want to delete {{contdict['name']}}</h2>
    Once deleted, the contact cannot be retrieved.

    <div id="controls">
        <a href="/fullDelete/{{contdict['id']}}"><input value="Delete" type="submit" /></a>
        <a href="/contact/{{contdict['id']}}"><input value="Go Back" type="submit" /></a>
    </div>
  </div>
% include('footer.tpl')
