import 'package:flutter/material.dart';
import 'package:practice1/screen/first_page.dart';

void main() {
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
