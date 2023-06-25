import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/top.gif'), fit: BoxFit.fill)),
        child: const Center(
          child: Text('loading...'),
        ),
      ),
    );
  }
}
