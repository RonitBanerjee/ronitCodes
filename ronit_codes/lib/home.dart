import 'package:flutter/material.dart';
import 'package:ronit_codes/coverImage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CoverImage(),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.white,
                    width: 2,
                  )),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.network(
                  'https://lh3.googleusercontent.com/a/AAcHTtcLKnWFc2NdS2BZUVealhDw0tb-NNStkUAyNsheHw=s345-c-no',
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
