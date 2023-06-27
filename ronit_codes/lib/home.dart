import 'package:flutter/material.dart';
import 'package:ronit_codes/coverImage.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool isDesktop = (width >= 700) ? true : false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(children: [
              const CoverImage(),
              Padding(
                padding: EdgeInsets.only(
                    top: isDesktop == true ? 150 : width * 0.20,
                    left: isDesktop == true ? 72 : width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: Colors.white,
                                width: 4,
                              )),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(500),
                            child: Image.network(
                              'https://media.licdn.com/dms/image/D4D03AQHDz-nEu9NMTQ/profile-displayphoto-shrink_800_800/0/1675945883162?e=2147483647&v=beta&t=ZSFqi5BjkXDwYW8CTXKA9doGJkcW6Ol1RmQ_deSpOHw',
                              width: isDesktop == true ? 150 : width * 0.25,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          'Ronit Banerjee',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isDesktop == true ? 40 : 32,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Brings ideas to life with code! ✨',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isDesktop == true ? 16 : 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      isDesktop
                          ? 'UX Designer & Jr. Software Developer @ SAMBUQ | Google UX Design \nSpecialization'
                          : 'UX Designer & Jr. Software Developer @ SAMBUQ\n | Google UX Design Specialization',
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: isDesktop == true ? 16 : 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    _buildIconRow(),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ],
    );
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

Widget _buildIconRow() {
  return Row(
    children: [
      ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        ),
        label: const Text('Follow'),
        icon: const Icon(
          Icons.follow_the_signs,
        ),
        onPressed: () {},
      ),
    ],
  );
}
