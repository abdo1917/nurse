import 'package:flutter/material.dart';
import 'package:personal_nursing/features/heart_rate/heart_rate_details.dart';

class HeartRateScreen extends StatelessWidget {
  const HeartRateScreen({super.key});

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
                  'Heart Rate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.all(30),
                child: const Text(
                  'You Can Check Your Heart Rate Easily!',
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
                        builder: (context) => HeartRateDetails(),
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
