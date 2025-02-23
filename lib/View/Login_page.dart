import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_app/View/sign_up.dart';
import 'package:my_flutter_app/controller/otp.dart';
//import 'package:getx_auth_app/view/signup_screen.dart';


class LoginScreen extends StatelessWidget {
   final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color(0xFFF5F5F5),
     
       body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFF493AD5),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Obx(
              () => TextField(
              controller: authController.emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email, color: Color(0xFF493AD5),
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Color(0xFF493AD5) ),
                errorText: authController.isEmailValied.value 
                ? null
                 : "Enter a valid Email",
                 filled: true,
                 fillColor: Colors.white,
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                 ),
                 focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                 ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: 20),
            Obx(
              () => TextField(
              controller: authController.passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock, 
                  color: Color(0xFF493AD5),
                ),
                labelText: "Password",
                labelStyle: TextStyle(color: Color(0xFF493AD5) ),
                errorText: authController.isPasswordvalied.value 
                ? null
                 : "Password must be at least 6 characters",
                 filled: true,
                 fillColor: Colors.white,
                border:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                 ),
                 focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                 ),
              ),
              obscureText: true,
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => authController.login(),
           child: Text(
              "Login",
               style: TextStyle(fontSize: 18),
           ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF493AD5),
                foregroundColor: Colors.white,
               
               padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
          ),
             SizedBox(height: 20),
             TextButton(onPressed: () => Get.to(()=>SignupScreen()),
              child: Text("Don't have an account? sign Up",
              style: TextStyle(
                color: Color(0xFF493AD5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
   ),
  );
 }
}