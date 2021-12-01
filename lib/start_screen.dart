import 'package:flutter/material.dart';
import 'package:proyecto/login_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _goToHome(context);

    return const Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/Logo.png"),
        ),
      ),
    );
  }
}

void _goToHome(BuildContext context) {
  Future.delayed(Duration(seconds: 1), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return LoginScreen();
    }));
  });
}
