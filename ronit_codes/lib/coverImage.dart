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
    return Image.asset(
      'assets/images/coverImagePlaceholder.gif',
      // width: 873,
      // height: 295,
    );
    // return RiveAnimation.network(
    //   'https://rive.app/community/5154-10355-joystick-demos-fish/',
    // );
  }
}
