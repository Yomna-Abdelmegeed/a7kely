import 'dart:async' show Timer;

import 'package:a7kely/Core/Authentication/Screens/sign_in_screen.dart';
import 'package:a7kely/color/app_color.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  static const String routeName = '/';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int opacity = 0;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    // Play the background audio 
    _audioPlayer.play(AssetSource('Audios/StoryTime.mp3',));

    // Fade in effect (slogan Animation)
    Timer(const Duration(seconds: 2), () {
      setState(() {
        opacity = 1;
      });
    });

    // Navigate to sign-in screen after 6 seconds
    Timer(const Duration(seconds: 7), () {
      Navigator.popAndPushNamed(context, SignInScreen.routeName);
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose(); // Release the player when the widget is removed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offWhite,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/Images/logo.png'),
            Image.asset('assets/Images/name.png'),
            AnimatedOpacity(
              opacity: opacity.toDouble(),
              duration: const Duration(seconds: 4),
              child: Image.asset('assets/Images/slogan.png'),
            )
          ],
        ),
      ),
    );
  }
}
