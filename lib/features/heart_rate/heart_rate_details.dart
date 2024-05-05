import 'package:flutter/material.dart';

class HeartRateDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * .05,
            color: Colors.green,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(bottom: 15),
            padding: const EdgeInsetsDirectional.all(18),
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Heart Rate',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * .05,
                  child: const Image(
                    image: AssetImage(
                      'assets/images/person.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Hey Mohamed , ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: size.height * .12,),
          SizedBox(
            height: size.height * .4,
            child: Image.asset(
              'assets/images/patient.jpg',
            ),
          ),
          SizedBox(height: size.height * .05,),
          SizedBox(
            width: size.width * .4,
            child: ElevatedButton(
              onPressed: () {},
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
    );
  }
}
