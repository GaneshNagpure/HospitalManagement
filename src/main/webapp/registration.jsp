<%@ include file="iheader.jsp" %>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2 class="text-center mb-4">Patient Registration</h2>
            <form action="PatientRegistrationServlet" method="post">
                <!-- Personal Information -->
                <div class="card mb-3">
                    <div class="card-header bg-primary text-white">Personal Information</div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" required oninput="validateFirstName()">
                            <small id="firstNameError" class="form-text text-danger" style="display:none;">First name is required.</small>
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" required oninput="validateLastName()">
                            <small id="lastNameError" class="form-text text-danger" style="display:none;">Last name is required.</small>
                        </div>
                        <div class="form-group">
                            <label for="dob">Date of Birth</label>
                            <input type="date" class="form-control" id="dob" name="dob" required oninput="validateDOB()">
                            <small id="dobError" class="form-text text-danger" style="display:none;">Date of Birth cannot be in the future.</small>
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender</label>
                            <select class="form-control" id="gender" name="gender" required>
                                <option value="">Select</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!-- Contact Information -->
                <div class="card mb-3">
                    <div class="card-header bg-secondary text-white">Contact Information</div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required oninput="validateEmail()">
                            <small id="emailError" class="form-text text-danger" style="display:none;">Please enter a valid email address.</small>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" required oninput="validatePhone()" maxlength="10">
                            <small id="phoneError" class="form-text text-danger" style="display:none;">Phone number must be 10 digits.</small>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <textarea class="form-control" id="address" name="address" rows="3" required></textarea>
                        </div>
                    </div>
                </div>
                <!-- Medical History -->
                <div class="card mb-3">
                    <div class="card-header bg-success text-white">Medical History</div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="bloodGroup">Blood Group</label>
                            <select class="form-control" id="bloodGroup" name="bloodGroup" required>
                                <option value="">Select</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="allergies">Allergies</label>
                            <textarea class="form-control" id="allergies" name="allergies" rows="2"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="existingConditions">Existing Medical Conditions</label>
                            <textarea class="form-control" id="existingConditions" name="existingConditions" rows="2"></textarea>
                        </div>
                    </div>
                </div>
                <!-- Login Details -->
                <div class="card mb-3">
                    <div class="card-header bg-info text-white">Login Details</div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" name="username" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                    </div>
                </div>
                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Register</button>
                    <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
            </form>
        </div>
    </div>
</div>


<script>
    // Real-time Validation Functions

    // Validate First Name
    function validateFirstName() {
        var firstName = document.getElementById("firstName").value;
        if (firstName === "") {
            document.getElementById("firstNameError").style.display = "inline";
        } else {
            document.getElementById("firstNameError").style.display = "none";
        }
    }

    // Validate Last Name
    function validateLastName() {
        var lastName = document.getElementById("lastName").value;
        if (lastName === "") {
            doc
            ument.getElementById("lastNameError").style.display = "inline";
        } else {
            document.getElementById("lastNameError").style.display = "none";
        }
    }

    // Validate Date of Birth (Cannot be a future date)
    function validateDOB() {
        var dob = document.getElementById("dob").value;
        var today = new Date();
        var dobDate = new Date(dob);
        if (dobDate > today) {
            document.getElementById("dobError").style.display = "inline";
        } else {
            document.getElementById("dobError").style.display = "none";
        }
    }

    // Validate Email Format
    function validateEmail() {
        var email = document.getElementById("email").value;
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailPattern.test(email)) {
            document.getElementById("emailError").style.display = "inline";
        } else {
            document.getElementById("emailError").style.display = "none";
        }
    }

    // Validate Phone Number (10 digits only)
    function validatePhone() {
        var phone = document.getElementById("phone").value;
        var phonePattern = /^[0-9]{10}$/;
        if (!phonePattern.test(phone)) {
            document.getElementById("phoneError").style.display = "inline";
        } else {
            document.getElementById("phoneError").style.display = "none";
        }
    }
</script>

<%@ include file="ifooter.jsp" %>
