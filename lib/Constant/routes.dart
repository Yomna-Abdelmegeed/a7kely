import 'package:a7kely/Core/Authentication/Screens/sign_in_screen.dart';
import 'package:a7kely/Core/Authentication/Screens/sign_up_screen.dart';
import 'package:a7kely/Core/Home/Screens/details_screen.dart';
import 'package:a7kely/Core/Home/Screens/home_screen.dart';
import 'package:a7kely/Core/Home/Screens/play_screen.dart';
import 'package:a7kely/Core/Splash/splash.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> myRoutes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  PlayScreen.routeName: (context) => const PlayScreen(),
};
