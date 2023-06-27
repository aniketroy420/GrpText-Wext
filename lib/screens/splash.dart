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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [

            Container(
              margin: const EdgeInsets.only(
                top: 30,
                bottom: 20,
                left: 20,
                right: 20,
              ),
              width: 200,
              child: Image.asset('assets/images/main.png',
                  opacity: const AlwaysStoppedAnimation(.6)),
            ),
               CircularProgressIndicator(color: Colors.white.withOpacity(0.6),),
          ]),
        ),
      ),
    );
  }
}
