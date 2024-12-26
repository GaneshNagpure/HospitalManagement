<footer class="footer bg-dark text-white text-center py-3">
    <p>&copy; 2024 Hospital Management System. All Rights Reserved.</p>
    <p>
       <a href="privacy.jsp" class="text-white text-decoration-none">Privacy Policy</a> |
       <a href="terms.jsp" class="text-white text-decoration-none">Terms & Conditions</a>
    </p>
    
</footer>

<style>
    /* Make sure html and body fill the full height of the screen */
    html, body {
        height: 100%; 
        margin: 0; /* Remove any default margin */
    }

    /* Use Flexbox for body layout */
    body {
        display: flex;
        flex-direction: column;
    }

    /* Push main content to take available space */
    main {
        flex: 1; /* Push the footer to the bottom */
    }

    /* Footer should stay at the bottom */
    .footer {
        background-color: #343a40;
        color: white;
        text-align: center;
        padding: 20px;
        margin-top: auto; /* Makes sure it stays at the bottom of the page */
    }
</style>
