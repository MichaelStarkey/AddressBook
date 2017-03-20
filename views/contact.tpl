% include('header.tpl')
  <div id="main">
    <h2>{{contdict['details'][0]}}</h2>
    <h4>{{contdict['details'][6]}}</h4>
    % if contdict['details'][1] != '':
      <strong>Email:</strong> {{contdict['details'][1]}}<br />
    % end
    % if contdict['details'][2] != '':
      <strong>Number:</strong> {{contdict['details'][2]}}<br />
    % end
    % if contdict['details'][3:6] != ('','',''):
      <strong>Address: </strong><br />
    % end
    % if contdict['details'][3] != '':
      {{contdict['details'][3]}}<br />
    % end
    % if contdict['details'][4] != '':
      {{contdict['details'][4]}}<br />
    % end
    % if contdict['details'][5] != '':
      {{contdict['details'][5]}}<br />
    % end

    % if contdict['details'][7] != []:
      % if contdict['details'][6] == 'person':
          <strong>Organisations:</strong><br />
      % elif contdict['details'][6] == 'organisation':
          <strong>People:</strong><br />
      % end
        % for c in contdict['details'][7]:
        <a href="/contact/{{c[1]}}">{{c[0]}}</a>
        <a href="/remove/{{contdict['id']}}/{{c[1]}}"><input value="Remove" type="button" /><br />
        % end
    % end
    <div id="controls">
        <a href="/edit/{{contdict['id']}}"><input value="Edit" type="button" /></a>
        <a href="/delete/{{contdict['id']}}"><input value="Delete" type="button" /></a>
    </div>




    <form id="addPartOf" action="/addPartOf/{{contdict['id']}}" method="get">
      <select form="addPartOf" name="contact">
        <option value="None"></option>
    % if contdict['details'][6] == 'organisation':
          % for p in [p for p in contdict['people'] if p not in contdict['details'][7]]:
          <option value="{{p[1]}}">{{p[0]}}</option>
          % end
      </select>
      <input value="Add Person" type="submit" />
    % elif contdict['details'][6] == 'person':
          % for o in [o for o in contdict['orgs'] if o not in contdict['details'][7]]:
          <option value="{{o[1]}}">{{o[0]}}</option>
          % end
      </select>
      <input value="Add Organisation" type="submit" />
    % end
    </form>
  </div>
% include('footer.tpl')
