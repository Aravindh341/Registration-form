/*"use strict";
function search() {
  var searchText = document.getElementById("search-movie").value.toLowerCase();
  var images = document.querySelectorAll(".movie-grid > img");

  if (searchText.length > 0) {
    images.forEach(function (image) {
      image.classList.add("hide");
      if (image.dataset.tags.toLowerCase().indexOf(searchText) > -1) {
        image.classList.remove("hide");
      }
    });
  } else {
    images.forEach(function(image){
      image.classList.remove("hide");
    });
  }
}*/

"use strict";
    var images = {
      "image1": {
        "src": "1.jpg",
        "tags": "Puss in Boots"
      },
      "image2": {
        "src": "2.jpg",
        "tags": "Prizeefighter"
      },
      "image3": {
        "src": "3.jpg",
        "tags": "Black panther"
      },
      "image4": {
        "src": "4.jpg",
        "tags": "Bear"
      },
      "image5": {
        "src": "5.jpg",
        "tags": "Knock at the cabin"
      },
      "image6": {
        "src": "6.jpg",
        "tags": "Sayen"
      },
      "image7": {
        "src": "7.jpg",
        "tags": "Shark side of the moon"
      },
      "image8": {
        "src": "8.jpg",
        "tags": "Exorcismos"
      }
    };
    function loadImages() {
      var grid = document.querySelector(".movie-grid");
      var keys = Object.keys(images);
      keys.forEach(function (key) {
        var img = new Image();
        img.onload = function () {
          images[key].loaded = true;
          grid.appendChild(img);
        };
        img.src = images[key].src;
        img.dataset.tags = images[key].tags;
      });
    }
    function search() {
      var searchText = document.getElementById("search-movie").value.toLowerCase();
      var images = document.querySelectorAll(".movie-grid > img");

      if (searchText.length > 0) {
        images.forEach(function (image) {
          if (image.dataset.tags.toLowerCase().indexOf(searchText) > -1) {
            image.style.display = "inline-block";
          } else {
            image.style.display = "none";
          }
        });
      } else {
        images.forEach(function(image){
          image.style.display = "inline-block";
        });
      }
    }
