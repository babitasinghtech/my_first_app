import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  var isEmailValied = true.obs;
  var isPasswordvalied = true.obs;
  var isConfirmPasswordValid = true.obs; 

  void login(){
   String email = emailController.text.trim();
   String password = passwordController.text.trim();

   if(email.isEmpty || !email.isEmail){
    isEmailValied.value = false;
   }
   else{
     isEmailValied.value = true;
    }
   if(password.isEmpty || password.length < 6){
    isPasswordvalied.value = false;
   }
   else{
     isPasswordvalied.value = true;
    }
     if(isEmailValied.value && isPasswordvalied.value && emailController.
     text == "babitasingh@gmail.com"){
      emailController.clear();
      passwordController.clear();
       Get.snackbar("success", "Logged in successfully",
       colorText: Colors.white, backgroundColor: Colors.green);  
   } 
   else{
    Get.snackbar("Error", "Logged in Failed!",
       colorText: Colors.white, backgroundColor: Colors.redAccent); 
   }
 }
   
   void signup(){
 String email = emailController.text.trim();
   String password = passwordController.text.trim();
   String confirmPassword = confirmPasswordController.text.trim();

   if(email.isEmpty || !email.isEmail){
    isEmailValied.value = false;
   }
   else{
     isEmailValied.value = true;
    }
   if(password.isEmpty || password.length < 6){
    isPasswordvalied.value = false;
   }
   else{
     isPasswordvalied.value = true;
    }
     if(confirmPassword != password){
    isConfirmPasswordValid.value = false;
   }
   else{
     isConfirmPasswordValid.value = true;
    }
     if(isEmailValied.value && 
     isPasswordvalied.value && isConfirmPasswordValid.value){
      emailController.clear();
      passwordController.clear();
      confirmPasswordController.clear();
       Get.snackbar("success", "Signed Up in successfully",
       colorText: Colors.white, backgroundColor: Colors.green);  
   } 
   else{
    Get.snackbar("Error", "Signed Up Failed!",
       colorText: Colors.white, backgroundColor: Colors.redAccent); 
   }
 }
}
