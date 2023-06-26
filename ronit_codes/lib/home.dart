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
            Stack(children: [
              CoverImage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(32, 220, 0, 0),
                    child: Container(
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
                          'https://media.licdn.com/dms/image/D4D03AQHDz-nEu9NMTQ/profile-displayphoto-shrink_800_800/0/1675945883162?e=2147483647&v=beta&t=ZSFqi5BjkXDwYW8CTXKA9doGJkcW6Ol1RmQ_deSpOHw',
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
