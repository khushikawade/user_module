import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoginModel with ChangeNotifier {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? emailError;
  String? passwordError;

  // Validate Email
  bool validateEmail() {
    final email = emailController.text;
    // Simple email regex for validation
    final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (email.isEmpty) {
      emailError = "Email cannot be empty";
      return false;
    } else if (!emailRegex.hasMatch(email)) {
      emailError = "Enter a valid email address";
      return false;
    }
    emailError = null;
    return true;
  }

  // Validate Password
  bool validatePassword() {
    final password = passwordController.text;
    if (password.isEmpty) {
      passwordError = "Password cannot be empty";
      return false;
    } else if (password.length < 6) {
      passwordError = "Password must be at least 6 characters";
      return false;
    }
    passwordError = null;
    return true;
  }

  // Combine both validations
  bool validateCredentials() {
    final isEmailValid = validateEmail();
    final isPasswordValid = validatePassword();
    notifyListeners();
    return isEmailValid && isPasswordValid;
  }

  void onLoginButtonClick() {
    if (validateCredentials()) {
      // Proceed with login logic
      print("Login successful");
    } else {
      print("Validation failed");
    }
  }
}
