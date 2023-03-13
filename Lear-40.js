function submitbtn() {
  var text = document.getElementById("text");
  let msg;
  if (text.value.length < 3) {
    msg = "This field requires minimum 3 characters";
  } else {
    msg = "";
  }
  document.getElementById("field").innerHTML = msg;
  let end = document.getElementById("end");
  end.innerHTML = "Welcome to the site " + text.value;
}
