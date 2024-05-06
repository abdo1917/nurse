import 'package:flutter/material.dart';
import 'package:personal_nursing/features/on%20Boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
   CustomPageView({super.key, @required this.pageController});
  PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: 'images/splashhh.jpg',
          title: 'Heart Rate',
          subTitle: 'You Can Check Your Heart Rate Easily!',
        ),
        PageViewItem(
          image: 'images/splashhh.jpg',
          title: 'Blood Pressure',
          subTitle: 'You Can Measure Your Blood Pressure Easily!',
        ),
        PageViewItem(
          image: 'images/splashhh.jpg',
          title: 'Heart Rate',
          subTitle: 'You Can Check Your Heart Rate Easily!',
        ),
      ],
    );
  }
}
