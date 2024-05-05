import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: size.height * .1,),
              SizedBox(
                height: size.height* .3,
                child: Image.asset(
                  'assets/images/login.jpg',
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.symmetric(
                  horizontal: 12,
                  vertical: 15,
                ),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Row(
                        children: [
                          Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Register',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: size.width * .4,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
