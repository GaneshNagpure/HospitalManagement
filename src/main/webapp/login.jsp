<%@ include file="iheader.jsp" %>
<div class="container mt-5">
    <div class="row justify-content-center align-items-center h-100">
        <!-- Left Image Section -->
        <div class="col-md-6 col-lg-6">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                 class="img-fluid" alt="Sample image">
        </div>

        <!-- Login Form Section -->
        <div class="col-md-6 col-lg-5 offset-lg-1">
            <div class="card">
                <div class="card-header bg-primary text-white text-center">
                    <h3>Login</h3>
                </div>
                <div class="card-body">
                    <form action="LoginServlet" method="post">
                        <!-- Social Login Buttons -->
                        <div class="d-flex flex-row align-items-center justify-content-center mb-3">
                            <p class="lead fw-normal me-3">Sign in with</p>
                            <button type="button" class="btn btn-social btn-facebook mx-1">
                                <i class="fab fa-facebook-f"></i>
                            </button>
                            <button type="button" class="btn btn-social btn-twitter mx-1">
                                <i class="fab fa-twitter"></i>
                            </button>
                            <button type="button" class="btn btn-social btn-google mx-1">
                                <i class="fab fa-google"></i>
                            </button>
                        </div>
                        <div class="divider d-flex align-items-center my-3">
                            <p class="text-center fw-bold mx-3 mb-0">Or</p>
                        </div>

                        <!-- Email Input -->
                        <div class="form-group mb-4">
                            <label for="username">Username</label>
                            <input type="text" id="username" class="form-control" name="username" placeholder="Enter your username" required>
                        </div>

                        <!-- Password Input -->
                        <div class="form-group position-relative mb-4">
                            <label for="password">Password</label>
                            <input type="password" id="password" class="form-control" name="password" placeholder="Enter your password" required>
                            <!-- Show Password Icon -->
                            <span class="position-absolute" style="top: 70%; right: 10px; transform: translateY(-50%); cursor: pointer; font-size: 18px;" onclick="togglePasswordVisibility()">
                                <i class="fa fa-eye" id="togglePasswordIcon"></i>
                            </span>
                        </div>

                        <!-- Remember Me and Forgot Password -->
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="rememberMe">
                                <label class="form-check-label" for="rememberMe">Remember Me</label>
                            </div>
                            <a href="forgotPassword.jsp" class="text-decoration-none">Forgot Password?</a>
                        </div>

                        <!-- Login Button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                        </div>
                    </form>
                </div>
                <div class="card-footer text-center">
                    <p class="small fw-bold mt-2 mb-0">Don't have an account? <a href="register.jsp" class="link-danger">Register Here</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="ifooter.jsp" %>

<!-- JavaScript for Toggle Password Visibility -->
<script>
    function togglePasswordVisibility() {
        const passwordField = document.getElementById("password");
        const toggleIcon = document.getElementById("togglePasswordIcon");

        if (passwordField.type === "password") {
            passwordField.type = "text";
            toggleIcon.classList.remove("fa-eye");
            toggleIcon.classList.add("fa-eye-slash");
        } else {
            passwordField.type = "password";
            toggleIcon.classList.remove("fa-eye-slash");
            toggleIcon.classList.add("fa-eye");
        }
    }
</script>

<!-- Add FontAwesome for Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<!-- Custom CSS for Styling -->
<style>
    /* Custom Button Style for Social Login */
    .btn-social {
        font-size: 16px;
        width: 45px;
        height: 45px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 50%;
        padding: 0;
    }

    .btn-facebook {
        background-color: #3b5998;
        color: white;
    }

    .btn-twitter {
        background-color: #1da1f2;
        color: white;
    }

    .btn-google {
        background-color: #db4437;
        color: white;
    }

    .btn-social i {
        font-size: 18px;
    }
</style>
