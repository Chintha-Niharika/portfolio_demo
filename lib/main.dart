import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'mainscreen.dart';

void main() {
  runApp(demo());
}

class demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
      home: mainscreen(),
    );
  }
}
