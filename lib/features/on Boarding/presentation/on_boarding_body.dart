import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_nursing/core/utils/size_config.dart';
import 'package:personal_nursing/core/widgets/custom_buttons.dart';
import 'package:personal_nursing/features/auth/presentation/login_screen.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    try {
      pageController = PageController(initialPage: 0)
        ..addListener(() {
          setState(() {});
        });
      if (pageController == 2) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      }
    } catch (e) {
      rethrow;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 17,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }
}
