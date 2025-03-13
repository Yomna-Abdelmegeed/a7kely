import 'package:a7kely/Core/Authentication/Screens/sign_in_screen.dart';
import 'package:a7kely/Core/Authentication/Screens/sign_up_screen.dart';
import 'package:a7kely/Core/Splash/splash.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> myRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
