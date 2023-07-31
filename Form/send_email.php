<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["email"])) {
        die("Email address is required.");
    }

    $verificationCode = bin2hex(random_bytes(4));

    $email = filter_var($_POST["email"], FILTER_SANITIZE_EMAIL);

    $subject = "Two-Factor Authentication Code";
    $message = "Your verification code is: $verificationCode";

    $headers = "From: dhanvineshk2003@example.com"; // Replace with your actual email address

    if (mail($email, $subject, $message, $headers)) {
        echo "Verification code sent to $email.";
    } else {
        echo "Failed to send the verification code.";
    }
}
?>
