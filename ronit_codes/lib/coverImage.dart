import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class CoverImage extends StatefulWidget {
  const CoverImage({super.key});

  @override
  State<CoverImage> createState() => _CoverImageState();
}

class _CoverImageState extends State<CoverImage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDesktop = (width >= 700) ? true : false;
    return Image.asset(
      'assets/images/coverImagePlaceholder.gif',
      width: (isDesktop == true) ? 700 : width,
      // height: 295,
    );
    // return RiveAnimation.network(
    //   'https://rive.app/community/5154-10355-joystick-demos-fish/',
    // );
  }
}
