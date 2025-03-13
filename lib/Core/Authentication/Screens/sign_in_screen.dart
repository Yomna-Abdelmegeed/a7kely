import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  static const String routeName = '/sign_in';
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('SignInScreen '),
      ),
    );
  }
}