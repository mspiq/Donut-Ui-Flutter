import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:donut_app_ui/pages/Home_Page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 300,
        splash: 'lib/images/donut/grape_donut.png',
        splashIconSize: 140,
        nextScreen: const MyHomePage(),
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.leftToRight,
        backgroundColor: Color.fromARGB(255, 236, 180, 199));
  }
}
