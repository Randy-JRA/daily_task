
import 'package:flutter/material.dart';

//imports of the different pages
import 'bottomNavigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
        appBar: AppBar(
          title: const Text('Sprallery'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            color: Colors.white70,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text widget
                    const Text(
                      'Are you interested in learning some flutter widgets',
                    ),
                    const Text(
                      'widgets Available are:Text widget, Button widget, Check box widget, and slider widget',
                    ),
                    const Text(
                      'Below is a button widget.',
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    // Button widget
                    ElevatedButton(
                      child: const Text('Button'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavigation(),
    );
  }
}