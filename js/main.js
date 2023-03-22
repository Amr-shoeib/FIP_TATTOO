document.querySelector(".hamburger-menu").addEventListener("click", () => {
  document.querySelector(".container").classList.toggle("change");
});

document.querySelector(".scroll-btn").addEventListener("click", () => {
  document.querySelector("html").style.scrollBehavior = "smooth";

  setTimeout(() => {
    document.querySelector("html").style.scrollBehavior = "unset";
  }, 1000);
});
// fetch('http://localhost:8000/team')
fetch('/data.json')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error(error));






