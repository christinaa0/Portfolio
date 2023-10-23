document.addEventListener('DOMContentLoaded', () => {
    const experiences = document.querySelectorAll('.experience');
    const parcoursSection = document.getElementById('parcours');
  
    function isElementInViewport(element) {
      const rect = element.getBoundingClientRect();
      return rect.top <= window.innerHeight;
    }
  
    function revealExperiences() {
      experiences.forEach((experience, index) => {
        if (isElementInViewport(parcoursSection) && experience.classList.contains('hidden')) {
          setTimeout(() => {
            experience.classList.remove('hidden');
          }, index * 500); // Décalage entre chaque expérience (0.5s par expérience)
        }
      });
    }
  
    // Vérifier lors du défilement
    window.addEventListener('scroll', revealExperiences);
    revealExperiences(); // Vérifier au chargement initial
  });
  