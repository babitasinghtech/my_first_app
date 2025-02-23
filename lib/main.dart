import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:my_flutter_app/View/Login_page.dart';
//import 'package:my_flutter_app/newsapp.dart';
//import 'package:getx_auth_app/view/signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News App",
      theme: ThemeData(
        primaryColor: Color(0xFF493AD5),
        scaffoldBackgroundColor: Color(0xFFF5F5F5F5),
      ),
      home: LoginScreen(),
    );
  }
}
