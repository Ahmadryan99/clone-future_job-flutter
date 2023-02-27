import 'package:flutter/material.dart';
import 'package:state_management_provider/pages/home_page.dart';
import 'package:state_management_provider/pages/onboarding_page.dart';
import 'package:state_management_provider/pages/sign_in_page.dart';
import 'package:state_management_provider/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignInPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
