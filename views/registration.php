<?php
    session_start(); 
?>
<!DOCTYPE html>
<html>

<head>
    <title>Registration</title>
    <link rel="stylesheet" type="text/css" href="../css/body.css">
    <link rel="stylesheet" type="text/css" href="../css/nav.css">
    <link rel="stylesheet" type="text/css" href="../css/registration.css">
</head>

<body>
    <?php
    include 'nav.html';
    ?>   
    <table id="reg">
        <tr>
            <td>
                <h1>Create Account</h1>
                <form>
                    <table>
                    	<tr>
                            <td>
                                <input type="text" name="name" placeholder="Name" oninput="Name()">
                                <p id="nameformmsg"></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="email" value="" placeholder="Email" oninput="Email()">
                                <p id="emailformmsg"></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input name="pass" type="password" placeholder="Password" oninput="Password()">
                                <p id="passformmsg"></p>
                            </td>
                        </tr>
                    </table>
                    <input class="btn" name="submit" type="submit" value="SIGN UP" oninput="Submit()">
                    <p id="submitformmsg"></p>
                </form>
            </td>
        </tr>
    </table>

    <script type="text/javascript">
        function Name(){
            console.log('hi');
            var name = document.querySelector('[name="name"]').value.trim();
            var msg = '';
            if (name != '') {
                msg = 'Success!';
                if (name.split(' ').length > 1) {
                    msg = 'Success!';
                    if (name.charAt(0).toLowerCase() != name.charAt(0).toUpperCase()) {
                        msg = 'Success!';
                        if (!validateName(name)) {
                            msg = '*Name must contain a-z, A-Z, dot(.) or dash(-)';
                        } else {
                            msg = 'Success!';
                        }
                    } else {
                        msg = '*Name must start with a letter';
                    }
                } else {
                    msg = '*Name can not be less than two words';
                }
            } else {
                msg = '*Name can not be empty';
            }
            if(msg != 'Success!') {
                document.getElementById('nameformmsg').innerHTML = msg;
                document.querySelector('[name="name"]').style.cssText = "border: 1px solid red;";
                document.getElementById('nameformmsg').style.cssText = "display: inline-block; color: red";
            } else {
                document.getElementById('nameformmsg').innerHTML = '';
                document.getElementById('nameformmsg').style.cssText = "display: block;";
                document.querySelector('[name="name"]').style.cssText = "border: 1px solid #0aab8e;";
            }
            if (msg == 'Success!') {
            } 
        }

        function Email(){
            var email = document.querySelector('[name="email"]').value.trim();
            var msg = '';
            if (email != ''){
                msg = "Success!";
                if (email.indexOf(" ") == -1) {
                    msg = 'Success!';
                    if (multipleAT(email)) {
                        msg = 'Success!';
                        if (email.indexOf("@") > 0) {
                            msg = 'Success!';
                            if (email.indexOf(".") > -1) {
                                msg = 'Success!';
                                var domainExt = email.split("@")[1];
                                var domain = domainExt.split(".")[0];
                                var ext = domainExt.replace(domain, '');
                                console.log(ext);
                                if(domain.length != 0 && validateDomainName(domain)){
                                    msg = 'Success!';
                                    if(ext.length > 1 && validateDomainExt(ext)){
                                        msg = 'Success!';
                                    } else {
                                        msg = '*Email must have more than 1 letter and letters only after last ".", should not have number.';
                                    }
                                } else {
                                    msg = '*Email can only have dot(.), dash(-), chracters and numbers between "@" and last "." with no adjacent "@" or "."';
                                }
                            } else {
                                msg = '*Email must have "."';
                            }
                        } else {
                            msg = '*Email can not start with "@"';
                        }
                    } else {
                        msg = '*Email can not have multiple "@"';
                    }
                } else {
                    msg = '*Email can not have spaces';
                }
            } else {
                msg = '*Email can not be empty';
            }
            if(msg != 'Success!') {
                document.getElementById('emailformmsg').innerHTML = msg;
                document.querySelector('[name="email"]').style.cssText = "border: 1px solid red;";
                document.getElementById('emailformmsg').style.cssText = "display: inline-block; color: red";
            } else {
                document.getElementById('emailformmsg').innerHTML = '';
                document.getElementById('emailformmsg').style.cssText = "display: block;";
                document.querySelector('[name="email"]').style.cssText = "border: 1px solid #0aab8e;";
            }
            if (msg == 'Success!') {
            }
        }

        function Password(){
            var pass = document.querySelector('[name="pass"]').value.trim();
            if(pass == ""){
                document.querySelector('[name="pass"]').style.cssText = "border: 1px solid red;";
                document.getElementById('passformmsg').innerHTML = '*password cant empty';
                document.getElementById('passformmsg').style.cssText = "display: block;";
                document.getElementById('passformmsg').style.color = "red";
            }
            else if(pass.length < 6){
                document.querySelector('[name="pass"]').style.cssText = "border: 1px solid 0aab8e;";
                document.getElementById('passformmsg').innerHTML = 'password is too weak';
                document.getElementById('passformmsg').style.cssText = "display: block;";
                document.getElementById('passformmsg').style.color = "#FF9800";
            }
            else if(pass.length >= 6 && pass.length < 7){
                document.querySelector('[name="pass"]').style.cssText = "border: 1px solid 0aab8e;";
                document.getElementById('passformmsg').innerHTML = 'password is weak';
                document.getElementById('passformmsg').style.cssText = "display: block;";
                document.getElementById('passformmsg').style.color = "#3d791f";
            }
            else if(pass.length >= 8 && pass.length < 9){
                document.querySelector('[name="pass"]').style.cssText = "border: 1px solid 0aab8e;";
                document.getElementById('passformmsg').innerHTML = 'password is strong';
                document.getElementById('passformmsg').style.cssText = "display: block;";
                document.getElementById('passformmsg').style.color = "#4CAF50";
            }
            else if(pass.length >= 12){
                document.querySelector('[name="pass"]').style.cssText = "border: 1px solid 0aab8e;";
                document.getElementById('passformmsg').innerHTML = 'password is too strong';
                document.getElementById('passformmsg').style.cssText = "display: block;";
                document.getElementById('passformmsg').style.color = "green";
            }
        }

        function validateName(string) {
            var array = string.split('');
            var flag = true;
            array.forEach(function(value) {
                if ((value == '.') || (value == '-') || (value == ' ') || (value.toLowerCase() != value.toUpperCase())) {} else {
                    flag = false;
                }
            });
            return flag;
        }

        function multipleAT(string) {
            var array = string.split('@');
            if ( array.length == 2) {
                return true
            }
            return false;
        }

        function validateDomainName(string) {
            var array = string.split('');
            var flag = true;
            array.forEach(function(value) {
                if ((value == '')) {
                    flag = false;
                } else {
                    if (value == '-' || value == '.' || ((value.toLowerCase() != value.toUpperCase())) ){} else {
                        flag = false;
                    }
                }
            });
            return flag;
        }

        function validateDomainExt(string) {
            var array = string.replace('.','');
            console.log(array);
            array = array.split('');
            console.log(array);
            var flag = true;
            array.forEach(function(value) {
                if (value == ' ') {
                    flag = false;
                } else {
                    if ((value.toLowerCase() != value.toUpperCase())) {flag = true;} else {
                        console.log(value);
                        flag = false;
                    }
                }
            });
            return flag;
        }
    </script>
</body>

</html>