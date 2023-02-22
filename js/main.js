window.onload = () => {
  setTimeout(() => {
    document.querySelector("body").classList.add("display");
  }, 500);
};

document.querySelector(".hamburger-menu").addEventListener("click", () => {
  document.querySelector(".container").classList.toggle("change");
});

document.querySelector(".scroll-btn").addEventListener("click", () => {
  document.querySelector("html").style.scrollBehavior = "smooth";
  setTimeout(() => {
    document.querySelector("html").style.scrollBehavior = "unset";
  }, 1000);

 const dataDisplay = document.getElementById("cards-wrapper");
 const button = document.getElementById('fetch-button');

 

button.addEventListener('click', () => {
  fetch('data.json')
  .then(response => response.json())
  .then(data => {

    // Display data on the web page
    dataDisplay.innerHTML = JSON.stringify(data);
      
    })
    .catch(error => {
      console.error('Error fetching data:', error);
    });
});
});
