const editor = document.getElementById("editor");
const boldBtn = document.getElementById("bold-btn");
const italicBtn = document.getElementById("italic-btn");
const underlineBtn = document.getElementById("underline-btn");
const strikeBtn = document.getElementById("strike-btn");
const linkBtn = document.getElementById("link-btn");
const linkModal = document.getElementById("link-modal");
const linkUrlInput = document.getElementById("link-url");
const linkInsertBtn = document.getElementById("link-insert-btn");
const linkCancelBtn = document.getElementById("link-cancel-btn");

// Save the editor content to local storage
function saveContent() {
  localStorage.setItem("content", editor.innerHTML);
}

// Load the editor content from
