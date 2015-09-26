//= require jquery

function appendOgImage(image) {
  var ogImage = document.createElement('meta');
  ogImage.setAttribute("property", "og:image");
  ogImage.setAttribute("content", image.src);
  $('head').append(ogImage);
}

$(document).ready(function() {
  var images = $('.blog_content img');

  if (images.length > 1) {
    appendOgImage(images[1]);
  } else if (images.length == 1) {
    appendOgImage(images[0]);
  }
});