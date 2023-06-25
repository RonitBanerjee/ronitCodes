import 'package:flutter/material.dart';
import 'package:ronit_codes/home.dart';
import 'dart:ui';
import 'package:ronit_codes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ronit Codes',
      theme: ThemeData(),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: CustomTheme.base,
        // appBar: PreferredSize(
        //   preferredSize: Size(
        //     double.infinity,
        //     56.0,
        //   ),
        //   child: ClipRRect(
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        //       child: AppBar(
        //         backgroundColor: Colors.black.withOpacity(0.2),
        //         title: Text('Ronit Codes'),
        //         leading: Icon(Icons.chevron_left),
        //         elevation: 0.0,
        //       ),
        //     ),
        //   ),
        // ),
        body: HomePage(),
      ),
    );
  }
}
