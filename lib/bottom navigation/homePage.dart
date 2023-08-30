
import 'package:flutter/material.dart';

//imports of the different pages
import 'bottomNavigationbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'daily task',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Daily Widgets'),
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
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}