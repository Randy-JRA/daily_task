import 'package:flutter/material.dart';

//imports of the different pages
import 'bottom navigation/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Sprallery',
      home: HomePage(),
    );
  }
}