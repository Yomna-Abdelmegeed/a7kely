import 'package:a7kely/Constant/routes.dart';
import 'package:a7kely/Core/Splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const A7kely());
}

class A7kely extends StatelessWidget {
  const A7kely({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes:myRoutes
    );
  }
}
