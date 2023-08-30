import 'package:flutter/material.dart';

//imports of the different pages
import 'bottom navigation/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sprallery',
      home: HomePage(),
    );
  }
}