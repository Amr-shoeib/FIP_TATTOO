
 const dataDisplay = document.getElementById("cards-wrapper");
 debugger;
 const button = document.getElementById('lightboxButton');
 const lightbox = document.querySelector('.lightbox');
 const closeLightbox = document.querySelector('.close-lightbox');

 debugger;

 dataDisplay.addEventListener('click', function(event) {
  debugger;
  lightbox.style.display = 'block';
}, false);

lightboxButton.addEventListener('click', function() {
  lightbox.style.display = 'block';
});

closeLightbox.addEventListener('click', function() {
  lightbox.style.display = 'none';
});

lightbox.addEventListener('click', function() {
  lightbox.style.display = 'none';
});

button.addEventListener('click', () => {
  fetch('data.json')
  .then(response => response.json())
  .then(data => {

    // Display data on the web page
    // dataDisplay.innerHTML = JSON.stringify(data);
    dataDisplay.innerHTML = JSON.stringify(data);
    
    })
    .catch(error => {
      console.error('Error fetching data:', error);
    });
});

window.onload = () => {
  setTimeout(() => {
    document.querySelector("body").classList.add("display");
  }, 500);
};