import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Green App',
        home: Scaffold(
        backgroundColor: HexColor('#ff188F79'),
        body: const HomePage(),
      ),
    );
  }
}
