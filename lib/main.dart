
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_nursing/features/auth/presentation/login_screen.dart';
import 'package:personal_nursing/features/auth/presentation/register_screen.dart';
import 'package:personal_nursing/features/blood_pressure/blood_pressure_details.dart';
import 'package:personal_nursing/features/home.dart';


void main() {
  runApp(const PersonalNurse());
}

class PersonalNurse extends StatelessWidget {
  const PersonalNurse({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),

    );
  }
}
