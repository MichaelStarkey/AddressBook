function _(element) {
    var e = document.getElementById(element);
    return e;
}

function checkName() {
  console.log("sadsd")
  if (_('name').value != ''){
    _('submit').removeAttribute("disabled");
    _('submit').setAttribute("value", "Submit");
  } else {
    _('submit').setAttribute("disabled", "disabled");
    _('submit').setAttribute("value", "Must Have Name");
  }
}
