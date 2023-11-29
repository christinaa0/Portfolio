// carousel.js

function createImageCarousel(images) {
  let currentIndex = 0;

  const prevButton = document.getElementById("prev-btn");
  const nextButton = document.getElementById("next-btn");
  const carouselImage = document.getElementById("carousel-image");

  function showImage(index) {
      carouselImage.src = images[index];
  }

  prevButton.addEventListener("click", function() {
      currentIndex = (currentIndex - 1 + images.length) % images.length;
      showImage(currentIndex);
  });

  nextButton.addEventListener("click", function() {
      currentIndex = (currentIndex + 1) % images.length;
      showImage(currentIndex);
  });

  // Afficher la première image au chargement de la page
  showImage(currentIndex);
}


 
