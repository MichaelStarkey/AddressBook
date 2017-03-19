% # add form page, also used for edits so initial values (the current details)
% # are needed along with an action variable (edit or add), content-dictionary required:
% # {... act: ('edit' OR 'add'), initVal: (name, email, number addr1, addr2, addr3), id: integerID}

% include('header.tpl')
  <div id="main">
    % if contdict['act'] == 'edit':
      <h2>Edit {{contdict['initVal'][0]}}</h2>
      <form id="editDb" action="/editContact/{{contdict['id']}}" method="get">
    % else:
      <h2>Add new {{contdict['initVal'][6]}}</h2>
      <form id="editDb" action="/addNew/{{contdict['initVal'][6]}}" method="get">
    % end
      <div>Name: <input onkeyup="checkName()" id="name" name="name" type="text" value="{{contdict['initVal'][0]}}"/></div>
      <div>Email: <input name="email" type="text" value="{{contdict['initVal'][1]}}"/></div>
      <div>Number: <input name="number" type="text" value="{{contdict['initVal'][2]}}"/></div>
      <div id="address">Address:</div>
      <div>Line 1: <input name="addrOne" type="text" value="{{contdict['initVal'][3]}}"/></div>
      <div>Line 2: <input name="addrTwo" type="text" value="{{contdict['initVal'][4]}}"/></div>
      <div>Post Code: <input name="addrThree" type="text" value="{{contdict['initVal'][5]}}"/></div>
      <div><input id="submit" value="Must Have Name" type="submit" disabled="disabled"/></div>
    </form>
  </div>
  <script src="/static/js/main.js" onload="checkName()"></script>
% include('footer.tpl')
