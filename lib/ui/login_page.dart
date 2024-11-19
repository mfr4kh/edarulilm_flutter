import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool passwordVisible = false;

  Future<void> login() async {
    final response = await http.post(
      Uri.parse('http://localhost:5245/api/User/authenticate'),
      body: {
        'userEmail': emailController.text.toString(),
        'userPassword': passwordController.text.toString()
      },
    );

    if (response.statusCode == 200) {
      // Handle successful login
      // Navigate to the home page or handle the response
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage(title: '',)));
    } else {
      // Handle login error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: login,
              child: Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}