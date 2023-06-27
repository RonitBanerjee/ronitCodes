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
    return Column(
      children: [
        Image.asset(
          'assets/images/coverImagePlaceholder.gif',
          width: (isDesktop == true) ? 700 : width,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: isDesktop ? width * 0.3 : width * 0.6,
              ),
              child: _buildFollowButton(),
            ),
          ],
        )
      ],
    );
    // return RiveAnimation.network(
    //   'https://rive.app/community/5154-10355-joystick-demos-fish/',
    // );
  }
}

Widget _buildFollowButton() {
  return SizedBox(
    height: 32,
    width: 140,
    child: ElevatedButton.icon(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.purple),
      ),
      label: const Text('Follow'),
      icon: const Icon(
        Icons.follow_the_signs,
      ),
      onPressed: () {},
    ),
  );
}
