import 'package:flutter/material.dart';
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
    return Container(
      width: width * 0.5,
      child: RichText(
          text: TextSpan(
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: isDesktop ? 72 : 32,
              ),
              children: [
            TextSpan(text: '''turning ideas into real life '''),
            TextSpan(
                text: '''Products ''',
                style: TextStyle(
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: [
                        Color(0xFFB773EA),
                        Color(0xFFC069E9),
                        Color(0xFFA355C2),
                      ],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                )),
            TextSpan(text: '''is my calling'''),
          ])),
    );
  }
}
