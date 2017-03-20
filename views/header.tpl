<!DOCTYPE html>
<html>
<head>
  <title> AddressBook </title>
  <link rel="stylesheet" type="text/css" href="/static/style/main.css">
</head>
<body>
  <div id="aside">
    <ul id="type">
      <a href="/add/person"><li>Add New Person</li></a>
      <a href="/add/organisation"><li>Add New Organisation</li></a>
    </ul>
    <ul id="peopleList">
      <li id="head"><strong>People</strong></li>
      % for p in contdict['people']:
      <a href="/contact/{{p[1]}}"><li>{{p[0]}}</li></a>
      % end
    </ul>
    <ul id="orgsList">
      <li id="head"><strong>Organisations</strong></li>
      % for o in contdict['orgs']:
      <a href="/contact/{{o[1]}}"><li>{{o[0]}}</li></a>
      % end
    </ul>
  </div>
