import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = '/sign_up';
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SignUpScreen'),
      ),
    );
  }
}