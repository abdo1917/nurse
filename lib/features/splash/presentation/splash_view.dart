import 'package:flutter/material.dart';
import 'package:personal_nursing/features/splash/presentation/widgets/Splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff229643),
      body: SplashViewBody(),
    );
  }
}
