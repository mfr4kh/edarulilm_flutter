import 'package:flutter/material.dart';
import 'login_page.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginPage()
        ),
      );
    });

    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to Video App',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}