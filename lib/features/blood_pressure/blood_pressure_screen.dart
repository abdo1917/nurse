import 'package:flutter/material.dart';
import 'package:personal_nursing/features/blood_pressure/blood_pressure_details.dart';
import 'package:personal_nursing/features/heart_rate/heart_rate_details.dart';

class BloodPressureScreen extends StatelessWidget {
  const BloodPressureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .60,
                child: Image.asset(
                  'assets/images/patient.jpg',
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.all(18),
                child: const Text(
                  'Blood Pressure',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.all(30),
                child: const Text(
                  'You Can Check Your Blood Pressure Easily!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .4,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BloodPressureDetails(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
