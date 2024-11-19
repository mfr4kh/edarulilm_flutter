import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simulating a check for isLoggedIn (this should come from shared preferences or state management)
    bool isLoggedIn = false; // Replace with actual logic

    Future.delayed(Duration(seconds: 2), () {
      if (isLoggedIn) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(title: '',)));
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    });

    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}