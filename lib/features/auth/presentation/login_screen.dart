import 'package:flutter/material.dart';
import 'package:personal_nursing/features/auth/presentation/register_screen.dart';
import 'package:personal_nursing/features/home.dart';

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
              SizedBox(
                height: size.height * .1,
              ),
              SizedBox(
                height: size.height * .3,
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
                       Row(
                        children: [
                          const Text(
                            'Don’t have an account?',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );

                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        width: size.width * .4,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ),
                            );
                          },
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
