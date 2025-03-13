import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  static const String routeName = '/play_screen';
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('PlayScreen'),
      ),
    );
  }
}
