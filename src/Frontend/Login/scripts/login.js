// Login validation
document.getElementById("loginForm").addEventListener("submit", function(event) {
    event.preventDefault();

    const email = document.getElementById("email").ariaValueMax.trim();

    if (email.endsWith("@online-schule-saarland.de")) {
        window.location.href = "dashboard.html";
    } else {
        alert("Please enter a valid email.");
    }
});

// Register button clicked
document.getElementById("registerButton").addEventListener("click", function() {
    window.location.href = "register.html";
});


// Light/Dark mode toggle
document.getElementById("themeToggle").addEventListener("click", () => {

    const themeLink = document.getElementById("stylesheet");

    if (themeLink.getAttribute("href") === "../resources/css/login-light-mode.css") {
        themeLink.setAttribute("href", "../resources/css/login-dark-mode.css");
        document.getElementById("themeToggle").textContent = "☀️";
    } else {
        themeLink.setAttribute("href", "../resources/css/login-light-mode.css");
        document.getElementById("themeToggle").textContent = "🌙";
    }
});